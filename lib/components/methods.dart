
//Future is n object representing a delayed computation.
import 'dart:convert';

import 'package:car_parts/cars.dart';
import 'package:car_parts/parts.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

Future<List<Parts>> downloadJSON() async {
  const jsonEndpoint = "http://192.168.1.18/PHP/cars/indexParts.php";

  final response = await get(Uri.parse(jsonEndpoint));

  if (response.statusCode == 200) {
    List parts =await json.decode(response.body);
    return parts
        .map((part) =>  Parts.fromJson(part))
        .toList();
  } else {
    throw Exception('We were not able to successfully download the json data.');
  }
}
Future<List<Car>> downloadJSONCars() async {
  const jsonEndpoint = "http://192.168.1.18/PHP/cars/index.php";

  final response = await get(Uri.parse(jsonEndpoint));

  if (response.statusCode == 200) {
    List cars =await json.decode(response.body);
    return cars
        .map((car) =>  Car.fromJson(car))
        .toList();
  } else {
    throw Exception('We were not able to successfully download the json data.');
  }
}



Widget createSecondViewItem(Car car, BuildContext context) {
    return  ListTile(
        title:  Card(
          elevation: 5.0,
          child:  Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(
                  child: Image.network(car.imageUrl),
                  padding:const EdgeInsets.only(bottom: 8.0),
                ),
                Row(children: <Widget>[
                  Padding(
                      child: Text(
                        car.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                      padding: const EdgeInsets.all(1.0)),
                  const Text(" | "),
                  Padding(
                      child: Text(
                        car.country,
                        style:  const TextStyle(fontStyle: FontStyle.italic),
                        textAlign: TextAlign.right,
                      ),
                      padding: const EdgeInsets.all(1.0)),
                ]),
              ],
            ),
          ),
        ),
        onTap: () {
          
        });
  }