import 'dart:async';

import 'package:fleexa/Features/devices/actuators/ac/presentation/manager/ac_control_cubit.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_timer_options.dart';
import 'package:fleexa/Features/devices/actuators/ac/presentation/views/widgets/ac_timer_settings_button.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../../core/utils/constants/app_strings.dart';
import '../../manager/ac_control_state.dart';
import 'custom_timer_picker.dart';

class AcTimer extends StatefulWidget {
  const AcTimer({super.key});

  @override
  State<AcTimer> createState() => _AcTimerState();
}

class _AcTimerState extends State<AcTimer> {
  int? selectedHours;
  int selectedMin = 0;
  Timer? _countdownTimer;

  int remainingHours = 0;
  int remainingMinutes = 0;

  @override
  void dispose() {
    _countdownTimer?.cancel();
    super.dispose();
  }

  void _startLocalCountdown(double? endTimestamp) {
    _countdownTimer?.cancel();

    if (endTimestamp == null) {
      setState(() {
        remainingHours = 0;
        remainingMinutes = 0;
        selectedHours = null;
      });
      return;
    }

    void updateRemainingTime() {
      final now = DateTime.now().millisecondsSinceEpoch;
      final diff = endTimestamp - now;

      if (diff > 0) {
        setState(() {
          remainingHours = (diff / (1000 * 60 * 60)).floor();
          remainingMinutes = ((diff / (1000 * 60)) % 60).floor();

          // if the user opned the screen and the timer was already running.
          if (selectedHours == null && remainingMinutes == 0) {
            selectedHours = remainingHours;
          }
        });
      } else {
        // timer has ended
        _countdownTimer?.cancel();
        setState(() {
          remainingHours = 0;
          remainingMinutes = 0;
          selectedHours = null;
        });
      }
    }

    updateRemainingTime(); // first call to set the initial state
    _countdownTimer = Timer.periodic(
        const Duration(minutes: 1), (_) => updateRemainingTime());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AcControlCubit, AcControlState>(
      listener: (context, state) {
        if (state is AcControlUpdated) {
          // every time we get an update from the cubit we check if the timer end timestamp has changed.
          _startLocalCountdown(state.timerEndTimestamp);
        }
      },
      builder: (context, state) {
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
                  // show the remaining time.
                  remainingHours > 0 || remainingMinutes > 0
                      ? S
                          .of(context)
                          .remainingTime(remainingHours, remainingMinutes)
                      : "No active timer",
                  style:
                      Styles.style14Medium.copyWith(color: AppColors.coolGray),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                AcTimerSettingsButton(
                  onTap: () {
                    final acCubit = context.read<AcControlCubit>();

                    showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (dialogContext) {
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          insetPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          child: CustomTimerPicker(
                            mode: PickerMode.duration,
                            initialDuration: const Duration(hours: 1),
                            onTimerSet: (Duration duration) {
                              acCubit.setTimer(
                                  duration.inHours, duration.inMinutes % 60);

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
                          // user cancelled the timer.
                          selectedHours = null;
                          selectedMin = 0;
                          context.read<AcControlCubit>().setTimer(0, 0);
                        } else {
                          // if user chose a new timer.
                          selectedHours = hours;
                          selectedMin = 0;
                          context.read<AcControlCubit>().setTimer(hours, 0);
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
