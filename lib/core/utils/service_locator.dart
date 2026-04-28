import 'package:fleexa/Features/devices/actuators/door_lock/presentation/manager/door_lock_cubit.dart';
import 'package:fleexa/Features/overview/home/data/repos/device_list_repository.dart';
import 'package:fleexa/core/network/api_service.dart';
import 'package:get_it/get_it.dart';

import '../../Features/devices/shared/data/repos/device_details_repository.dart';
import '../../Features/overview/notifications/data/repos/notifications_repository.dart';
import '../../Features/overview/system_overview/data/repos/system_overview_repository.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  // 1. Create one signle instance of ApiService to be used across the app
  getIt.registerLazySingleton<APiService>(() => APiService());

  // 2. Pass that single ApiService to all repositories that need it
  getIt.registerLazySingleton<DeviceListRepository>(
    () => DeviceListRepository(getIt<APiService>()),
  );

  getIt.registerLazySingleton<DeviceDetailsRepository>(
    () => DeviceDetailsRepository(getIt<APiService>()),
  );

  getIt.registerLazySingleton<SystemOverviewRepository>(
    () => SystemOverviewRepository(getIt<APiService>()),
  );

  getIt.registerLazySingleton<NotificationsRepository>(
    () => NotificationsRepository(getIt<APiService>()),
  );

  getIt.registerLazySingleton<DoorLockCubit>(
    () => DoorLockCubit(
      repository: getIt<DeviceDetailsRepository>(),
      deviceId: 'door-actuator-01',
    ),
  );
}
