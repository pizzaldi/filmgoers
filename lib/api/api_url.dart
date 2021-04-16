class ApiUrl {
  static String apiKey = 'c49a31c64f8aa7d0263fac21a7a4ccd0';
  final String apiReadAccessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjNDlhMzFjNjRmOGFhN2QwMjYzZmFjMjFhN2E0Y2NkMCIsInN1YiI6IjVjOGRkOGNkOTI1MTQxMGZlYWEwNDc5NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.7-aX5gHIcYFnBZQcPwQ2ytUoplFlUh4D3rNixcZnrO0';

  final String baseUrl = 'https://api.themoviedb.org/3';

  /// Get trending movies
  static String trendingUrl(String mediaType, String timeWindow) =>
      '/trending/$mediaType/$timeWindow?api_key=$apiKey';

  String getTrendingUrl(String mediaType, String timeWindow) =>
      baseUrl + trendingUrl(mediaType, timeWindow);

  /// Get upcoming movies
  static String upcomingUrl() => '/movie/upcoming?api_key=$apiKey';
  String getUpcomingUrl() => baseUrl + upcomingUrl();
}
