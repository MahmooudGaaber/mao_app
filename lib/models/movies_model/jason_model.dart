class MoviesModel {
   int? page;
   List<Results>? results;
   int? totalResults;
   int? totalPages;

  MoviesModel({ this.page,  this.results,  this.totalResults,  this.totalPages});

  MoviesModel.fromJson(Map<dynamic, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results!.add(Results.fromJson(v));
      });
    }
    totalResults = json['total_results'];
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['page'] = page;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    data['total_results'] = totalResults;
    data['total_pages'] = totalPages;
    return data;
  }
}

class Results {
 late String posterPath;
 late bool adult;
 late String overview;
 late String releaseDate;
 late List<int> genreIds;
 late int id;
 late String originalTitle;
 late String originalLanguage;
 late String title;
 late String backdropPath;
 late double popularity;
 late int voteCount;
 late bool video;
 late dynamic voteAverage;

  Results(
      {
        required this.posterPath,
        required this.adult,
        required this.overview,
        required this.releaseDate,
        required this.genreIds,
        required this.id,
        required this.originalTitle,
        required this.originalLanguage,
        required this.title,
        required this.backdropPath,
        required this.popularity,
        required this.voteCount,
        required this.video,
         this.voteAverage});

  Results.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    adult = json['adult'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalTitle = json['original_title'];
    originalLanguage = json['original_language'];
    title = json['title'];
    backdropPath = json['backdrop_path'];
    popularity = json['popularity'];
    voteCount = json['vote_count'];
    video = json['video'];
    voteAverage = json['vote_average'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['poster_path'] = posterPath;
    data['adult'] = adult;
    data['overview'] = overview;
    data['release_date'] = releaseDate;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['original_title'] = originalTitle;
    data['original_language'] = originalLanguage;
    data['title'] = title;
    data['backdrop_path'] = backdropPath;
    data['popularity'] = popularity;
    data['vote_count'] = voteCount;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    return data;
  }
}
