import 'package:filmgoers/model/film/film_data.dart';
import 'package:filmgoers/model/film_details.dart';
import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TMDB tmdbWithCustomLogs;
  Map result;
  List resultList;
  List<FilmData> filmList = <FilmData>[];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    tmdbWithCustomLogs = TMDB(
        ApiKeys(
          'c49a31c64f8aa7d0263fac21a7a4ccd0',
          'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjNDlhMzFjNjRmOGFhN2QwMjYzZmFjMjFhN2E0Y2NkMCIsInN1YiI6IjVjOGRkOGNkOTI1MTQxMGZlYWEwNDc5NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.7-aX5gHIcYFnBZQcPwQ2ytUoplFlUh4D3rNixcZnrO0',
        ),
        logConfig: ConfigLogger(
          showLogs: true,
          showErrorLogs: true,
        ));

    _getTrending();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height / 2,
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            if (filmList != null)
              for (FilmData object in filmList)
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => FilmDetailScreen(
                                filmData: object,
                              )));
                    },
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w500' +
                          object.posterPath.toString(),
                    ),
                  ),
                )
            else
              Container()
          ],
        ),
        // child: ListView(
        //   scrollDirection: Axis.horizontal,
        //   children: <Widget>[
        //     if (resultList != null)
        //       for (var object in resultList)
        //         Container(
        //           padding: EdgeInsets.only(bottom: 10),
        //           // child: Text(object['title'].toString()),
        //           // Expanded(
        //           child: Image.network(
        //             'https://image.tmdb.org/t/p/w500' +
        //                 object['poster_path'].toString(),
        //             // scale: 1.1,
        //           ),
        //           // )
        //         )
        //     else
        //       Container()
        //     // for (var object in resultList) Text(object.toString())
        //   ],
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

  void _getTrending() async {
    result = await tmdbWithCustomLogs.v3.trending
        .getTrending(mediaType: MediaType.all, timeWindow: TimeWindow.day);

    setState(() {
      resultList = result['results'];

      for (int i = 0; i < resultList.length; i++) {
        filmList.add(FilmData.fromJson(resultList[i]));
      }
    });

    print('length: ${filmList.length}, result: ${filmList.toString()}');
  }
}
