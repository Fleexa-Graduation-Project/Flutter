import 'package:fleexa/Features/devices/shared/data/models/device_model.dart';
import 'package:fleexa/Features/overview/home/presentation/manager/devices_cubit.dart';
import 'package:fleexa/Features/overview/home/presentation/manager/devices_state.dart';
import 'package:fleexa/Features/overview/system_overview/data/models/device_quick_item.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/card_label_value.dart';
import 'package:fleexa/Features/overview/system_overview/presentation/views/widgets/device_card.dart';
import 'package:fleexa/core/utils/constants/app_colors.dart';
import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:fleexa/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DeviceOverviewCard extends StatelessWidget {
  final DeviceModel initialDeviceModel;
  final DeviceQuickItem quickDevice;

  const DeviceOverviewCard({
    super.key,
    required this.initialDeviceModel,
    required this.quickDevice,
  });

  String getDeviceLabel(BuildContext context, DeviceModel currentDevice) {
    switch (currentDevice.type) {
      case 'temp-sensor':
        return S.of(context).currentTemperature;
      case 'light-sensor':
        return "Light Level";
      case 'gas-sensor':
        return S.of(context).gasLevel;
      case 'door-actuator':
        return S.of(context).lastActivity;
      case 'ac-actuator':
        return S.of(context).target;
      default:
        return quickDevice.deviceDesc;
    }
  }

  // الدالة الآمنة جداً لمعالجة الوقت ومنع ظهور أي أصفار أو شُرط
  String _formatAbsoluteTime(dynamic lastSeenData) {
    // 1. لو القيمة مش موجودة أو صفر، نعرض Just now بدل --
    if (lastSeenData == null || lastSeenData.toString().trim() == '0') {
      return 'Just now';
    }

    DateTime lastSeen;

    try {
      if (lastSeenData is DateTime) {
        lastSeen = lastSeenData;
      } else if (lastSeenData is int) {
        if (lastSeenData <= 0) return 'Just now';
        final isMillis = lastSeenData > 1000000000000;
        lastSeen = DateTime.fromMillisecondsSinceEpoch(
          isMillis ? lastSeenData : lastSeenData * 1000,
        );
      } else if (lastSeenData is String) {
        String rawDate = lastSeenData.replaceAll(' ', 'T');
        if (!rawDate.endsWith('Z') && !rawDate.contains('+')) {
          rawDate += 'Z';
        }
        // لو مقدرش يحول التاريخ لسبب ما، هياخد وقت الموبايل الحالي
        lastSeen = DateTime.tryParse(rawDate)?.toLocal() ?? DateTime.now();
      } else {
        return 'Just now';
      }

      // تحويل الوقت لصيغة 12 ساعة (مثال: 3:49 PM)
      int hour = lastSeen.hour;
      String period = hour >= 12 ? 'PM' : 'AM';
      if (hour == 0) hour = 12;
      if (hour > 12) hour -= 12;
      String minute = lastSeen.minute.toString().padLeft(2, '0');

      return '$hour:$minute $period';
    } catch (e) {
      // حماية أخيرة لأي خطأ غير متوقع
      return 'Just now';
    }
  }

  String getDeviceValue(DeviceModel currentDevice) {
    final payload = currentDevice.payload;

    switch (currentDevice.type) {
      case 'temp-sensor':
        final temp = (payload['temp'] as num?)?.toInt() ?? 0;
        return '$temp°C';

      case 'light-sensor':
        final raw = (payload['light_level'] as num?)?.toInt() ?? 0;
        return '$raw Lux';

      case 'gas-sensor':
        final gas = (payload['gas_level'] as num?)?.toDouble() ?? 0.0;
        return '${gas.toStringAsFixed(1)} PPM';

      case 'door-actuator':
        // الاعتماد على وقت آخر ظهور من السيرفر، مع التمرير للدالة الآمنة
        return _formatAbsoluteTime(currentDevice.lastSeenAt);

      case 'ac-actuator':
        final target = (payload['target_temp'] as num?)?.toInt() ?? 0;
        return '$target°C';

      default:
        return currentDevice.status;
    }
  }

  bool isActuator(DeviceModel currentDevice) {
    return currentDevice.type.toLowerCase().contains('actuator');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).pushNamed(quickDevice.path),
      child: BlocBuilder<DevicesCubit, DevicesState>(
        builder: (context, state) {
          DeviceModel currentDevice = initialDeviceModel;

          if (state is DevicesLoaded) {
            try {
              currentDevice = state.devices.firstWhere(
                (d) => d.deviceId == initialDeviceModel.deviceId,
              );
            } catch (_) {}
          }

          return DeviceCard(
            isActuator: isActuator(currentDevice),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      quickDevice.title,
                      style: Styles.style14Medium.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(quickDevice.iconPath,
                        width: 20, height: 20),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  // هنا هتظهر LOCKED أو UNLOCKED زي ما موجودة في الـ payload
                  currentDevice.operationalState,
                  style: Styles.style12Regular.copyWith(
                    color: AppColors.mediumGray,
                  ),
                ),
                const SizedBox(height: 12),
                CardLabelValue(
                  label: getDeviceLabel(context, currentDevice),
                  value: getDeviceValue(currentDevice),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
