// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:anilist/medialist_collection.dart';
import 'package:anilist/search_anime_query.dart';

class MediaFilterModel {
  final GMediaType type;
  final int? seasonYear;
  List<String?>? genreIn;
  List<GMediaFormat?>? formatIn;

  MediaFilterModel({
    this.type = GMediaType.ANIME,
    this.seasonYear,
    this.genreIn,
    this.formatIn,
  });

  GSearchAnimeQueryReq? getReq(GSearchAnimeQueryReqBuilder b) {
    // GSearchAnimeQueryReq(
    //                 (b) => b
    //                   ..vars.search = textEditingController.text.isNotEmpty
    //                       ? textEditingController.text
    //                       : null
    //                   ..vars.type = mediaType.first
    //                   ..vars.season =
    //                       mediaType.first == GMediaType.ANIME ? season : null
    //                   ..vars.seasonYear = mediaType.first == GMediaType.ANIME
    //                       ? seasonYear
    //                       : null
    //                   ..vars.genreIn = null
    //                   ..vars.formatIn = null
    //                   ..vars.genreNotIn = null
    //                   ..vars.tagIn = null
    //                   ..vars.tagNotIn = null,
    //               )
    b.vars.type = type;
    b.vars.seasonYear = type == GMediaType.ANIME ? seasonYear : null;
    b.vars.formatIn = formatIn == null ? null : null;
  }
}
