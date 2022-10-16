class Car {
  final String id;
  final String name, imageUrl, country;
  Car({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.country,
    
  });

  factory Car.fromJson(Map<String, dynamic> jsonData) {
    return Car(
      id: jsonData['car_id'],
      name: jsonData['car_name'],
      country: jsonData['car_cntr'],
      imageUrl: "http://192.168.1.18/PHP/cars/images/"+jsonData['img_url'],
    );}}