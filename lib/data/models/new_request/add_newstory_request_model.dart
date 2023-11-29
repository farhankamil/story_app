class AddNewStoryRequestModel {
  final String description;
  final String fileName;
  final List<int> imageByte;
  final double lat;
  final double lon;

  AddNewStoryRequestModel({
    required this.description,
    required this.fileName,
    required this.imageByte,
    required this.lat,
    required this.lon,
  });

  factory AddNewStoryRequestModel.fromJson(Map<String, dynamic> json) =>
      AddNewStoryRequestModel(
        description: json["description"],
        fileName: json["fileName"],
        imageByte: List<int>.from(json["imageByte"].map((x) => x)),
        lat: json["lat"]?.toDouble(),
        lon: json["lon"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "fileName": fileName,
        "imageByte": List<dynamic>.from(imageByte.map((x) => x)),
        "lat": lat,
        "lon": lon,
      };
}
