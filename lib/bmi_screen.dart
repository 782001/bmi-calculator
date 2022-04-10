

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BMI RESULT.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<BmiScreen> {
  bool isMale =true;
  double hight=120;
  int weight=60;
  int age=20;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title:const Text(
            'BMI CALCULATOR'
        ),
      ),
      body: Container(color: Colors.black,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: isMale? Colors.blueGrey:Colors.grey,
                          ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const  Image(
                                image: AssetImage('assets/images/male.png',
                                ),
                                height: 90,
                                width: 90,
                                // color: Colors.red,
                              ),
                              const         SizedBox(
                                height: 10,
                              ),
                              Text('MALE',
                                style:TextStyle(
                                  color: Colors.grey[300],
                                  fontWeight: FontWeight.bold,
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const       SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;

                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: isMale? Colors.grey:Colors.blueGrey
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const           Image(
                                image: AssetImage('assets/images/female.png',
                                ),
                                height: 85,
                                width: 85,
// color: Colors.red,
                              ),
                              const            SizedBox(
                                height: 10,

                              ),
                              Text('FEMALE',
                                style:TextStyle(
                                  color: Colors.grey[300],
                                  fontWeight: FontWeight.bold,
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HIGHT',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[300]
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('${hight.round()}',
                            style:const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                          const      Text('cm',
                            style: TextStyle(
                                fontSize: 20,   color: Colors.white
                            ),),

                        ],
                      ),
                      Slider(
                          value: hight,
                          max: 205,
                          min: 10,
                          activeColor: Colors.red,
                          onChanged: (value){
                            setState(() {
                              hight=value;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),

            const  SizedBox(
              height: 20,
            ),
            Expanded(

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(  decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey
                      ),
                        child: Expanded(
                          child: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('WEIGHT',
                                style:TextStyle(
                                  color: Colors.grey[300],
                                  fontWeight: FontWeight.bold,
                                ),),
                              Text('$weight',
                                style:const TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),
                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed: (){

                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: 'weight-',

                                    mini: true,
                                    backgroundColor: Colors.red,
                                    child:const  Icon(
                                      Icons.remove,
                                      color: Colors.white,

                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed: (){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    heroTag: 'weight+',
                                    mini: true,
                                    backgroundColor: Colors.red,
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,


                                    ),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const       SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(  decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey
                      ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                              style:TextStyle(
                                color: Colors.grey[300],
                                fontWeight: FontWeight.bold,
                              ),),
                            Text('$age',
                              style:const TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },   heroTag: 'age-',
                                  mini: true,
                                  backgroundColor: Colors.red,
                                  child:const  Icon(
                                    Icons.remove,
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  mini: true,
                                  backgroundColor: Colors.red,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ) ,

            const  SizedBox(
              height: 20,
            ),

            Container(
              height: 60,
              width: double.infinity,
              color: Colors.red,
              child: TextButton(
                onPressed: (){
                  double  result=weight/pow(hight/100,2 );
                        print(result.round());
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>BmiResultScreen(

                      weight: weight,
                      age: age,
                      result: result.round(),
                    )



                    ),
                  );
                },
                child:  const Text(
                  'CALCULATE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                  ),
                ),),
            )
          ],
        ),
      ),
    );
  }
}
