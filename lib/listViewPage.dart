import 'package:flutter/material.dart';
import 'package:untitled2/temp_db.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie List'),
      ),
      body: ListView(
        children: movies.map((movie) => ListTile(
          title: Text(movie.name!),
        )).toList(),

      ),
    );
  }
}
