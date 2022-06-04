import 'package:flutter/material.dart';
import 'package:untitled2/movie_details_page.dart';
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
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) =>Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MovieDetailsPage(movies[index])));
            },
            tileColor: index.isEven? Colors.cyan.shade100:Colors.cyan.shade700,
            title: Text(movies[index].name!),
            subtitle: Text(movies[index].catagory!),
            leading: Image.asset(
              movies[index].image!,
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
                Text(movies[index].rating.toString()),
              ],
            ),
          ),
        ) ,
      ),
    );
  }

  ListView buildListView(BuildContext context) {
    return ListView(
      children: movies
          .map((movie) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MovieDetailsPage(movie)));
                  },
                  tileColor: Colors.cyan.shade100,
                  title: Text(movie.name!),
                  subtitle: Text(movie.catagory!),
                  leading: Image.asset(
                    movie.image!,
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
                      Text(movie.rating.toString()),
                    ],
                  ),
                ),
              ))
          .toList(),
    );
  }
}
