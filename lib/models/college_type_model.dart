class CollegeTypeModel {
  final String name;
  final String imageAssetPath;

  CollegeTypeModel({required this.name, required this.imageAssetPath});

  factory CollegeTypeModel.fromJson(Map<String, dynamic> json) {
    return CollegeTypeModel(
      name: json['name'],
      imageAssetPath: json['imageAssetPath'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageAssetPath': imageAssetPath,
    };
  }
}
