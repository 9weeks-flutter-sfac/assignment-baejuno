class NetImage {
  String message;
  String status;

  NetImage({
    required this.message, 
    required this.status});

  factory NetImage.fromMap(Map<String, dynamic> map) {
    return NetImage(
      message: map["message"], 
      status: map["status"]
      );
  }
}

