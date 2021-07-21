import 'package:filmgoers/bloc/tv_cubit/tv_cubit.dart';
import 'package:filmgoers/model/episode/episode_model.dart';
import 'package:filmgoers/model/film/film_model.dart';
import 'package:filmgoers/model/tv/tv_details_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class FilmDetailScreen extends StatefulWidget {
  const FilmDetailScreen({Key? key, required this.filmData}) : super(key: key);

  final FilmModel? filmData;

  @override
  _FilmDetailScreenState createState() => _FilmDetailScreenState();
}

class _FilmDetailScreenState extends State<FilmDetailScreen> {
  TvCubit? _tvCubit;
  TvDetailsModel? tvDetailsData;

  @override
  void initState() {
    if (widget.filmData!.mediaType.toLowerCase() == 'tv') {
      _tvCubit = TvCubit()..getTvDetails(widget.filmData!.id);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('details: ${widget.filmData.toString()}');
    return Scaffold(
      appBar: AppBar(
        title: Text(getTitle(widget.filmData!)),
      ),
      body: Container(
        // padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/w500' +
                  widget.filmData!.backdropPath.toString(),
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                getTitle(widget.filmData!),
                style: GoogleFonts.montserrat(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(widget.filmData!.overview ?? '')),
            SizedBox(
              height: 8,
            ),
            if (widget.filmData!.mediaType.toLowerCase() == 'tv') _tvDetails()
          ],
        ),
      ),
    );
  }

  Widget _tvDetails() {
    return BlocBuilder<TvCubit, TvState>(
      bloc: _tvCubit,
      builder: (BuildContext context, TvState state) {
        print('tv state: ${state.toString()}');
        if (state is TvDetailsSuccessState) {
          if (state.result != null) {
            tvDetailsData = state.result;
            return Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  tvDetailsData!.nextEpisodeToAir != null
                      ? nextEpisodeDetail(tvDetailsData!.nextEpisodeToAir)
                      : Container()
                  // Text(
                  //   'Next Episode',
                  //   style: GoogleFonts.montserrat(
                  //       fontSize: 20.0, fontWeight: FontWeight.bold),
                  // ),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  // Text(
                  //     'Episode ${tvDetailsData.nextEpisodeToAir.getEpisodeNumber()} | Airs ${tvDetailsData.nextEpisodeToAir.airDate}'),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  // Text(tvDetailsData.nextEpisodeToAir.name ?? 'No title'),
                ],
              ),
            );
          }
        }
        return Container();
      },
    );
  }

  Widget nextEpisodeDetail(EpisodeModel data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Next Episode',
          style: GoogleFonts.montserrat(
              fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 8,
        ),
        Text('Episode ${data.getEpisodeNumber()} | Airs ${data.airDate}'),
        SizedBox(
          height: 8,
        ),
        Text(data.name ?? 'No title'),
        // Image.network(
        //   'https://image.tmdb.org/t/p/w500' +
        //       tvDetailsData.nextEpisodeToAir.stillPath.toString(),
        // ),
      ],
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
