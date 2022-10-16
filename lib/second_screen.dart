
import 'package:car_parts/parts.dart';
import 'package:flutter/material.dart';
import 'cars.dart';


class SecondScreen extends StatelessWidget {
  final Parts value;
  final List<Parts> parts;
  final List<Car> cars;

  const SecondScreen({Key? key,required this.value, required this.parts, required this.cars}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar:  AppBar(title:  const Text('قطع الغيار')),
      body: ListView.builder(
      itemCount: parts.length,
      itemBuilder: (context, int currentIndex) {
        return viewItem(parts[currentIndex], context);
      },
      ));
  }
  Widget viewItem(Parts part, BuildContext context){
    return ListTile(
        title:  Card(
          elevation: 5.0,
          child:  Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.orange)),
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(
                  child: Image.network(part.partImgUrl),
                  padding:const EdgeInsets.only(bottom: 8.0),
                ),
                Row(children: <Widget>[
                  Padding(
                      child: Text(
                        "الاسم : "+part.partName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      ),
                      padding: const EdgeInsets.all(1.0)),
                  const Text(" | "),
                  Padding(
                      child: Text(
                        " السعر :"+part.partPrice,
                        style:  const TextStyle(fontStyle: FontStyle.italic),
                        textAlign: TextAlign.right,
                      ),
                      padding: const EdgeInsets.all(1.0)),
                ]),
              ],),),),
        onTap: () {});
  }
 }
//      Center(
//         child: Column(
//           children: <Widget>[
//             const Padding(
//               child:  Text(
//                 'قطع غيار السيارة ',
//                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
//                 textAlign: TextAlign.center,
//               ),
//               padding: EdgeInsets.only(bottom: 20.0),
//             ),
//             Padding(
//               child: Image.network(widget.value.imageUrl),
//               padding: const EdgeInsets.all(12.0),
//             ),
//             CustomText(text:'NAME : ${widget.value.partName}',),
//             CustomText(text:'Country : ${widget.value.partPrice}',)
//           ],   ),
//       ),
//     );
//   }
// }