class SettingsCardModel {
  final String Icon;
  final String name;
  final String description;
  final String? status;

  SettingsCardModel({
    required this.Icon,
    required this.name,
    required this.description,
    this.status,
  });
}
