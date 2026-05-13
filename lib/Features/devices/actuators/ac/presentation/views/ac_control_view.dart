import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_control_buttons.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_device_status.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_mode_control.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_smart_rules.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_temp_info.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_timer.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/control_mode_toggle.dart';
import 'package:fleexa/core/router/app_router.dart';
import 'package:fleexa/core/utils/constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_appbar.dart';
import '../../../../../../../generated/l10n.dart';

class AcControlView extends StatefulWidget {
  const AcControlView({super.key});

  @override
  State<AcControlView> createState() => _AcControlViewState();
}

class _AcControlViewState extends State<AcControlView> {
  int controlMode = 0; // 0 = Automatic, 1 = Manual
  ACMode selectedMode = ACMode.cooling;
  int targetTemperature = 24;
  int threshold = 1;
  bool powerOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: S.of(context).airConditioner,
        detailsPage: AppRouter.acDetails,
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ControlModeToggle(
                    controlMode: controlMode,
                    onModeChanged: (int mode) {
                      setState(() {
                        controlMode = mode;
                      });
                    },
                  ),
                  const SizedBox(height: 48),
                  AcDeviceStatus(
                    selectedMode: selectedMode,
                    temperature: targetTemperature,
                  ),
                  const SizedBox(height: 20),
                  AcControlButtons(
                    isManual: controlMode == 1,
                    onIncreaseTemp: () {
                      setState(() {
                        targetTemperature++;
                      });
                    },
                    isOn: powerOn,
                    onPowerToggle: (bool isOn) {
                      setState(() {
                        powerOn = isOn;
                      });
                    },
                    onDecreaseTemp: () {
                      setState(() {
                        targetTemperature--;
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  AcModeControl(
                    acMode: selectedMode,
                    onToggle: (value) {
                      setState(() {
                        selectedMode = value;
                      });
                    },
                  ),
                  const SizedBox(height: 32),
                  const AcTempInfo(),
                  const SizedBox(height: 32),
                  if (controlMode == 0)
                    const AcTimer()
                  else
                    AcSmartRules(
                      threshold: threshold,
                      targetTemp: targetTemperature,
                      onChanged: (value) {
                        setState(() {
                          threshold = value.toInt();
                        });
                      },
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
