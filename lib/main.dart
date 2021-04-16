import 'package:filmgoers/bloc/trending_bloc/trending_bloc.dart';
import 'package:filmgoers/bloc/upcoming_cubit/upcoming_cubit.dart';
import 'package:filmgoers/model/film/film_model.dart';
import 'package:filmgoers/model/trending/trending_model.dart';
import 'package:filmgoers/model/upcoming/upcoming_model.dart';
import 'package:filmgoers/screens/film_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  TrendingBloc trendingBloc;
  TrendingModel trendingData;

  UpcomingCubit upcomingCubit;
  UpcomingModel upcomingData;

  @override
  void initState() {
    trendingBloc = TrendingBloc()
      ..add(TrendingGetDataEvent(mediaType: 'all', timeWindow: 'day'));

    upcomingCubit = UpcomingCubit()..getUpcomingData();

    super.initState();
  }

  @override
  void dispose() {
    trendingBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: _movieList());
  }

  Widget _movieList() {
    return BlocBuilder(
      value: trendingBloc,
      builder: (BuildContext context, TrendingState state) {
        if (state is TrendingSuccessState) {
          if (state.result != null) {
            trendingData = state.result;
            return Container(
              height: MediaQuery.of(context).size.height / 4,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  if (trendingData.results != null)
                    for (FilmModel object in trendingData.results)
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
            );
          }
        }
        return Container();
      },
    );
  }
}
