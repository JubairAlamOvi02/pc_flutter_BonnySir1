import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/dice_game_page.dart';
import 'package:untitled2/listViewPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.cyan),
     // home: HomeScreenWidget(),
     //home: DiceGame(),
      home: ListViewPage(),
    );
  }
}

class HomeScreenWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'By The Name Of ALLAH , ',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextSection(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonSection()
            ],
          ),
          ImageSectionHome()
        ],
      )),
    );
  }

  Column ButtonSection() {
    return Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 10,),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit2'),
                ),
                Icon(Icons.favorite,color: Colors.cyan[300],size: 50,),
              ],
            );
  }

  Column TextSection() {
    return Column(
          children: const [
            Text(
              'By the name of ALLAH',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'He is the only one',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
          ],
        );
  }

  Image ImageSectionHome() {
    return Image.network('https://t3.ftcdn.net/jpg/03/01/67/48/360_F_301674825_ib63RVHvt7e6Rgq5ufFO1TOBt1fYnEJL.jpg',
        width:double.infinity,
        height: 300,
        fit: BoxFit.cover,
        );
  }
}
