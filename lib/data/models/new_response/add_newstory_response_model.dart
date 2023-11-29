class AddNewStoryResponseModel {
  final bool error;
  final String message;

  AddNewStoryResponseModel({
    required this.error,
    required this.message,
  });

  factory AddNewStoryResponseModel.fromJson(Map<String, dynamic> json) =>
      AddNewStoryResponseModel(
        error: json["error"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
      };
}
