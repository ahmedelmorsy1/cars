import 'package:car_parts/cars.dart';
import 'package:car_parts/parts.dart';
import 'package:flutter/material.dart';
import '../second_screen.dart';

class CustomListView extends StatelessWidget {
  final List<Car> cars;
   final List<Parts> parts;

   const CustomListView(this.cars, this.parts, {Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return ListView.builder(
      itemCount: cars.length,
      itemBuilder: (context, int currentIndex) {
        return createViewItem(cars[currentIndex],parts[currentIndex], context);
      },
    );
  }

  Widget createViewItem(Car car,Parts part, BuildContext context) {
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
          var route =  MaterialPageRoute(
            builder: (BuildContext context) =>
             SecondScreen(value: part,parts: parts, cars: cars,),
          ); 
          Navigator.of(context).push(route);
        });
  }
}