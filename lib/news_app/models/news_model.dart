class NewsModel {
  String title;
  String description;
  String imageUrl;
  bool isFavourite;
  String url;
  NewsModel(
      {this.title,
      this.description,
      this.imageUrl,
      this.isFavourite = false,
      this.url});
}
