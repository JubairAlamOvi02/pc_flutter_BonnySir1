import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/movie_model.dart';

import 'movie_details_page.dart';

class MovieItem extends StatefulWidget {
  final Movie movie;
  final int index;


  MovieItem(this.movie, this.index);

  @override
  State<MovieItem> createState() => _MovieItemState();
}

class _MovieItemState extends State<MovieItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MovieDetailsPage(widget.movie)));
        },
        tileColor: widget.index.isEven? Colors.cyan.shade100:Colors.cyan.shade700,
        title: Text(widget.movie.name!),
        subtitle: Text(widget.movie.catagory!),
        leading: Image.asset(
          widget.movie.image!,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            Text(widget.movie.rating.toString()),
          ],
        ),
      ),
    );
  }
}
