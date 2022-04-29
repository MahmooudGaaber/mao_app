class NowMoviesModel
{
 late String moviePhotoUrl;
 late String movieName;

 NowMoviesModel({
   required this.movieName,
   required this.moviePhotoUrl,
});
}

class PopularMoviesModel
{
  late String moviePhotoUrl;
  late String movieName;
  late int movieRate;

  PopularMoviesModel({
    required this.movieName,
    required this.moviePhotoUrl,
    required this.movieRate,
  });
}