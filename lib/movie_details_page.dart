import 'package:flutter/material.dart';
import 'package:untitled2/movie_model.dart';

class MovieDetailsPage extends StatefulWidget {

  final Movie movie;




  MovieDetailsPage(this.movie);

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movie.name!,textDirection: TextDirection.ltr,),
      ),
    );
  }
}
 