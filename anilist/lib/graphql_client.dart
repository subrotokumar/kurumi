import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

Client initClient({String? accessToken}) {
  late HttpLink httpLink;
  if (accessToken == null) {
    httpLink = HttpLink('https://graphql.anilist.co');
  } else {
    httpLink = HttpLink(
      'https://graphql.anilist.co',
      defaultHeaders: {'Authorization': 'Bearer $accessToken'},
    );
  }
  return Client(link: httpLink);
}
