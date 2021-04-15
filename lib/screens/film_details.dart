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
        title: Text(filmData.title ?? ''),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              filmData.title ?? '',
              style: GoogleFonts.staatliches(fontSize: 30.0),
            ),
            Text(filmData.releaseDate ?? '')
          ],
        ),
      ),
    );
  }
}
