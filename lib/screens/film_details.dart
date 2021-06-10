import 'package:filmgoers/model/film/film_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilmDetailScreen extends StatelessWidget {
  const FilmDetailScreen({Key key, this.filmData}) : super(key: key);

  final FilmModel filmData;

  @override
  Widget build(BuildContext context) {
    print('details: ${filmData.toString()}');
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle(filmData)),
      ),
      body: Container(
        // padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/w500' +
                  filmData.backdropPath.toString(),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                getTitle(filmData),
                style: GoogleFonts.montserrat(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(filmData.overview ?? ''))
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
