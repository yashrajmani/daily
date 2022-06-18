import 'package:news/models/src_model.dart';

class News {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;

  News({
     this.source,
     this.author,
     this.title,
     this.description,
     this.url,
     this.urlToImage,
     this.publishedAt,
     this.content,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      source: Source.fromJson(json['source']),
      author: json['author'] ?? "Source",
      title: json['title'] ?? 'News',
      description: json['description'] ?? 'This is news description',
      url: json['url'] ?? 'https://timesofindia.indiatimes.com/',
      urlToImage: json['urlToImage'] ?? 'https://st.depositphotos.com/1186248/3276/i/600/depositphotos_32760371-stock-photo-breaking-news.jpg',
      publishedAt: json['publishedAt'] ?? 'Today',
      content: json['content'] ?? 'Content',
    );
  }
}
