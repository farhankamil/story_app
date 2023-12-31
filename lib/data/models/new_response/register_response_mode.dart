
class RegisterResponseModel {
    final bool error;
    final String message;

    RegisterResponseModel({
        required this.error,
        required this.message,
    });

    factory RegisterResponseModel.fromJson(Map<String, dynamic> json) => RegisterResponseModel(
        error: json["error"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
    };
}
