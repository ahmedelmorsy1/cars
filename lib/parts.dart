class Parts {
  final String carId,partId;
  final String partName, partImgUrl, partPrice;

  Parts({
    required this.carId,
    required this.partId,
    required this.partName,
    required this.partImgUrl,
    required this.partPrice,
  });

  factory Parts.fromJson(Map<String, dynamic> jsonData) {
    return Parts(
      carId: jsonData['car_id'],
      partId: jsonData['part_id'],
      partName: jsonData['part_name'],
      partPrice: jsonData['part_price'],
      partImgUrl: "http://192.168.1.18/PHP/cars/images/parts/"+jsonData['part_img'],
    );
  }
}
