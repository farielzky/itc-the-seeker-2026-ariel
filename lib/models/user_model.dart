class UserModel {
  final int id;
  final String name;
  final String position;
  final String division;
  final String imagePath;
  final String description;
  final String contact;
  bool isFavorite;

  UserModel({
    required this.id,
    required this.name,
    required this.position,
    required this.division,
    required this.imagePath,
    required this.description,
    required this.contact,
    this.isFavorite = false,
  });
}

class OrganizationModel {
  final String name;
  final String tagline;
  final String description;
  final String logoPath;
  final String vision;

  const OrganizationModel({
    required this.name,
    required this.tagline,
    required this.description,
    required this.logoPath,
    required this.vision,
  });
}
