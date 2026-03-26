enum DeviceStatus { online, offline }

enum DeviceFilter { all, sensors, actuators }

enum DeviceType { sensor, actuator }

enum SensorType { temperature, humidity, motion }

enum ActuatorType { doorLock, ac }

enum NotificationType { info, warning, critical }

enum AlertType { warning, critical }

enum AlertDeviceType { doorLock, gasSensor }

enum ACMode { cooling, heating, fanOnly, dry }

enum ACControlType { manual, auto }

enum TimeRange { lastDay, lastWeek, lastMonth }

enum PickerMode { duration, time }
