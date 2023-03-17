import 'package:anilist/graphql_client.dart';
import 'package:anilist/tranding_anime.dart';

void main(List<String> args) {
  final client = initClient();
  final req = GtrendingAnimeReq(
    (b) => b
      ..vars.perPage = 1
      ..vars.perPage = 16,
  );
  client.request(req).listen((event) {
    print(event.data?.Page?.media?.first);
  });
}
