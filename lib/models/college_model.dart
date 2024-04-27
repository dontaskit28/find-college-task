class CollegeModel {
  final String name;
  final String imageAssetPath;
  final String description;

  CollegeModel({
    required this.name,
    required this.imageAssetPath,
    required this.description,
  });

  factory CollegeModel.fromJson(Map<String, dynamic> json) {
    return CollegeModel(
      name: json['name'],
      imageAssetPath: json['imageAssetPath'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageAssetPath': imageAssetPath,
      'description': description,
    };
  }
}
