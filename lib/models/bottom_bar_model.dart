class BottomBarModel {
  final String title;
  final String imageAssetPath;

  BottomBarModel({
    required this.title,
    required this.imageAssetPath,
  });

  factory BottomBarModel.fromMap(Map<String, dynamic> map) {
    return BottomBarModel(
      title: map['title'],
      imageAssetPath: map['imageAssetPath'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'imageAssetPath': imageAssetPath,
    };
  }
}
