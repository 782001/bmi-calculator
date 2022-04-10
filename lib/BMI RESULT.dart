
import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

final int result;
final int age;
final int weight;

BmiResultScreen({
  required this.result,
  required this.age,
  required this.weight,


});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    appBar: AppBar(
      backgroundColor: Colors.black,
     leading: IconButton(
       onPressed: (){
         Navigator.pop(context);
       },

       icon:const Icon(Icons.keyboard_arrow_left),
     ),
      title: const Text(
        'RESULT',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ), 
    body:  Container(decoration: const BoxDecoration(
      borderRadius: BorderRadiusDirectional.only(
        topStart: Radius.circular(50),
        topEnd: Radius.circular(50),
      ),
      color: Colors.blueGrey
    ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text('Result : $result',
            style:const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            fontSize: 25,
            ),
            ),
            Text('Age : $age',
            style:const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            fontSize: 25,
            ),
            ),
            Text('Weight :$weight ',
              style:const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),

          ],
        ),
      ),
    ),
    );
  }
}
