import 'dart:math';

import 'package:flutter/material.dart';


class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {

  final random =Random.secure();

  int score = 0;
  int highScore = 0;
  int diceSum = 0;
  int index1 = 0;
  int index2 = 0;
  bool isGameOver =false;
  final diceList= [
    'pictures/d1.png',
    'pictures/d2.png',
    'pictures/d3.png',
    'pictures/d4.png',
    'pictures/d5.png',
    'pictures/d6.png'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Game'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Score :$score',style: TextStyle(fontSize: 30),),
          Text('Higest Score:$score',style: TextStyle(fontSize: 20),),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(diceList[index1], width: 100, height: 100,),
              Image.asset(diceList[index2], width: 100, height: 100,),
            ],
          ),
          Text('DeceSum:$diceSum',style: TextStyle(fontSize: 20),),
          if(diceSum == 11 )Text('Game Over',style: TextStyle(fontSize: 40,color: Colors.red),),
          ElevatedButton(child: Text('Roll'),
            onPressed:rollTheDice,
            )
        ],
      ),
    );


  }
  void rollTheDice(){
    setState(() {
      index1=random.nextInt(6);
      index2 =random.nextInt(6);

      diceSum =index1 + index2 +2;
      if(diceSum==11){

      }
      else{
        score = score+diceSum;
      }




      print('index1 =$index1 index2=$index2');
    });
  }
}
