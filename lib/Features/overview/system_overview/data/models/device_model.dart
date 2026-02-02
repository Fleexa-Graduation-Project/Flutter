class DeviceModel {
  final String title;
  final String status;
  final String iconPath;
  final String label;
  final String value;
  final bool isActuator;
final String path;
  const DeviceModel({
    required this.title,
    required this.status,
    required this.iconPath,
    required this.label,
    required this.value,
    this.isActuator = false, required this.path,
  });
}
