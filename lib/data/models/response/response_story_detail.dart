class ResponseStoryDetailModel {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final DateTime createdAt;
  final double? lat;
  final double? lon;

  ResponseStoryDetailModel({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    this.lat,
    this.lon,
  });

  factory ResponseStoryDetailModel.fromJson(Map<String, dynamic> json) {
    return ResponseStoryDetailModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      photoUrl: json['photoUrl'],
      createdAt: DateTime.parse(json['createdAt']),
      lat: json['lat'],
      lon: json['lon'],
    );
  }
}
