class Article{
  final String? title;
  final String? desc;
  final String? imageUrl;

  Article({
    required this.title,
    required this.desc,
    required this.imageUrl
  });

   factory Article.fromJSON(Map<String, dynamic> json){
      return Article(
        title: json['title'],
        desc: json['description'],
        imageUrl: json['urlToImage']
      );
   }


}