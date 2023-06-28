class ManufacturerItem {
  final int id;
  final String name;

  const ManufacturerItem({
    required this.id,
    required this.name,
  });

  factory ManufacturerItem.fromJson(Map<String, dynamic> json) {
    return ManufacturerItem(
      id: json['id'],
      name: json['name'],
    );
  }
}
