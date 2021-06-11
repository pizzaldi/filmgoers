import 'package:filmgoers/bloc/trending_bloc/trending_bloc.dart';
import 'package:filmgoers/bloc/upcoming_cubit/upcoming_cubit.dart';
import 'package:filmgoers/model/film/film_model.dart';
import 'package:filmgoers/model/trending/trending_model.dart';
import 'package:filmgoers/model/upcoming/upcoming_model.dart';
import 'package:filmgoers/screens/film_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
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
      home: MyHomePage(title: 'FILMGOERS'),
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
        body: _trendingSection());
  }

  Widget _trendingSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          child: Text(
            'Trending',
            style: GoogleFonts.montserrat(fontSize: 30.0),
            textAlign: TextAlign.start,
          ),
        ),
        _trendingList(),
        Container(
          padding: EdgeInsets.all(8),
          child: Text(
            'Coming Soon',
            style: GoogleFonts.montserrat(fontSize: 30.0),
            textAlign: TextAlign.start,
          ),
        ),
        _upcomingList()
      ],
    );
  }

  Widget _trendingList() {
    return BlocBuilder(
      value: trendingBloc,
      builder: (BuildContext context, TrendingState state) {
        if (state is TrendingSuccessState) {
          if (state.result != null) {
            trendingData = state.result;
            return Container(
                height: MediaQuery.of(context).size.height / 4,
                child: _filmList(trendingData.results));
          }
        }
        return Container();
      },
    );
  }

  Widget _upcomingList() {
    return BlocBuilder<UpcomingCubit, UpcomingState>(
      value: upcomingCubit,
      builder: (BuildContext context, UpcomingState state) {
        if (state is UpcomingSuccessState) {
          if (state.result != null) {
            upcomingData = state.result;
            return Container(
                height: MediaQuery.of(context).size.height / 4,
                child: _filmList(upcomingData.results));
          }
        }
        return Container();
      },
    );
  }

  Widget _filmList(List<FilmModel> data) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        SizedBox(
          width: 8,
        ),
        if (data != null)
          for (FilmModel object in data)
            Container(
              padding: EdgeInsets.only(bottom: 10, right: 8),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FilmDetailScreen(
                              filmData: object,
                            )));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://image.tmdb.org/t/p/w500' +
                          object.posterPath.toString(),
                    ),
                  )),
            )
        else
          Container()
      ],
    );
  }
}
