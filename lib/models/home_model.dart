class HomeModel {
  final String name;
  final String description;
  final String imageAssetPath;
  final String extra;
  final String extra2;

  HomeModel({
    required this.name,
    required this.description,
    required this.imageAssetPath,
    required this.extra,
    required this.extra2,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      name: json['name'],
      description: json['description'],
      imageAssetPath: json['imageAssetPath'],
      extra: json['extra'],
      extra2: json['extra2'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'imageAssetPath': imageAssetPath,
      'extra': extra,
      'extra2': extra2,
    };
  }
}
