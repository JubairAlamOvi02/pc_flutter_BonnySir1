//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'By The Name Of ALLAH',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'By the name of ALLAH',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 18),
          ),
          const Text(
            'He is the only one',
            textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
          Image.network('https://t3.ftcdn.net/jpg/03/01/67/48/360_F_301674825_ib63RVHvt7e6Rgq5ufFO1TOBt1fYnEJL.jpg',
          width:double.infinity,
          height: 300,
          fit: BoxFit.cover,
          )
        ],
      )),
    ),
  ));
}
