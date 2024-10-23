import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:kurumi/src/features/news/models/news.dart';
import 'package:kurumi/src/features/news/models/rss.dart';
import 'package:kurumi/src/features/news/models/channel.dart';

import 'package:xml2json/xml2json.dart';

final newsProvider = FutureProvider<News>((ref) async {
  final transformer = Xml2Json();
  final uri = Uri.parse("https://myanimelist.net/rss/news.xml");
  final res = await http.get(uri);
  if (res.statusCode == 200) {
    transformer.parse(res.body);
    final body = transformer.toParker();
    final news = News.fromJson(body);
    return news;
  }
  return const News(
    rss: Rss(
      channel: Channel(item: []),
    ),
  );
});
