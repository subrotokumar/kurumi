import 'package:anilist/anilist.dart';
import 'package:ferry/ferry.dart';

Future toggleLikeToPost(
  Client client, {
  int? id,
  GLikeableType type = GLikeableType.ACTIVITY,
}) async {
  final response = await client
      .request(
        GActivityLikeToggleMutationReq(
          (b) => b
            ..vars.id = id
            ..vars.type = GLikeableType.ACTIVITY,
        ),
      )
      .first;
  return !response.hasErrors;
}
