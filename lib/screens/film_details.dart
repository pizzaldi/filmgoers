import 'package:filmgoers/bloc/tv_cubit/tv_cubit.dart';
import 'package:filmgoers/model/film/film_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilmDetailScreen extends StatefulWidget {
  const FilmDetailScreen({Key key, this.filmData}) : super(key: key);

  final FilmModel filmData;

  @override
  _FilmDetailScreenState createState() => _FilmDetailScreenState();
}

class _FilmDetailScreenState extends State<FilmDetailScreen> {
  TvCubit _tvCubit;

  @override
  void initState() {
    _tvCubit = TvCubit()..getTvDetails(widget.filmData.id);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('details: ${widget.filmData.toString()}');
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle(widget.filmData)),
      ),
      body: Container(
        // padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/w500' +
                  widget.filmData.backdropPath.toString(),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                getTitle(widget.filmData),
                style: GoogleFonts.montserrat(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(widget.filmData.overview ?? ''))
          ],
        ),
      ),
    );
  }

  String getTitle(FilmModel data) {
    // if (data.mediaType == 'movie') {
    //   return data.title ?? '';
    // } else if (data.mediaType == 'tv') {
    //   return data.name ?? '';
    // } else
    return data.title ?? data.name ?? '';
  }
}
