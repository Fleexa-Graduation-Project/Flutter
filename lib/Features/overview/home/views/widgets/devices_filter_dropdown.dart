import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_strings.dart';
import '../../../../../generated/l10n.dart';

class DevicesFilterDropdown extends StatelessWidget {
  const DevicesFilterDropdown({
    super.key,
    required this.currentFilter,
    required this.onChanged,
  });

  final DeviceFilter currentFilter;
  final Function(DeviceFilter?) onChanged;

  @override
  Widget build(BuildContext context) {
    final filters = DeviceFilter.values;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.darkGray,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<DeviceFilter>(
          value: currentFilter,
          isDense: true,
          icon: const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.white,
              size: 20,
            ),
          ),
          dropdownColor: AppColors.darkGray,
          style: Styles.style12Medium,
          items: filters.map((filter) {
            return DropdownMenuItem<DeviceFilter>(
              value: filter,
              child: Text(
                switch (filter) {
                  DeviceFilter.all => S.of(context).homeAllDevices,
                  DeviceFilter.sensors => S.of(context).homeSensors,
                  DeviceFilter.actuators => S.of(context).homeActuators,
                },
                style: Styles.style12Medium,
              ),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
