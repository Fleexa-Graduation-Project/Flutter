import 'package:fleexa/Features/devices/actuators/ac/views/widgets/ac_timer_options.dart';
import 'package:fleexa/Features/devices/actuators/ac/views/widgets/ac_timer_settings_button.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/constants/app_strings.dart';
import 'custom_timer_picker.dart';

class AcTimer extends StatefulWidget {
  const AcTimer({super.key});

  @override
  State<AcTimer> createState() => _AcTimerState();
}

class _AcTimerState extends State<AcTimer> {
  int? selectedHours;
  int selectedMin = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.of(context).timer,
              style: Styles.style18Medium,
            ),
            const Spacer(),
            Text(
              S.of(context).remainingTime(selectedHours ?? 0, selectedMin),
              style: Styles.style14Medium.copyWith(color: AppColors.coolGray),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            AcTimerSettingsButton(
              onTap: () {
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (context) {
                    return Dialog(
                      backgroundColor: Colors.transparent,
                      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomTimerPicker(
                        mode: PickerMode.duration,
                        initialDuration: const Duration(hours: 1),
                        onTimerSet: (Duration duration) {
                          setState(() {
                            selectedHours = duration.inHours;
                            selectedMin = duration.inMinutes % 60;
                          });
                        },
                      ),
                    );
                  },
                );
              },
            ),
            Expanded(
              child: AcTimerOptions(
                selectedOption: selectedHours,
                selectedMin: selectedMin,
                onOptionChanged: (int hours) {
                  setState(() {
                    if (selectedHours == hours) {
                      selectedHours = null;
                      selectedMin = 0;
                    } else {
                      selectedHours = hours;
                      selectedMin = 0;
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
