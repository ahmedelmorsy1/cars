import 'package:flutter/material.dart';

import 'components/custom_list_view.dart';
import 'components/methods.dart';
import 'cars.dart';
import 'parts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme:  ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home:  Scaffold(
        appBar:  AppBar(title: const Text('MySQL Images Text')),
        body:  Center( 
          child:  FutureBuilder<List<dynamic>>(
            future: Future.wait([downloadJSON(), downloadJSONCars()]),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<Parts>? part = snapshot.data![0];
                List<Car>? car = snapshot.data![1];
                return  CustomListView(car!,part!);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              else {
                return  const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}