import 'package:anilist/graphql_client.dart';
import 'package:anilist/profile.dart';
import 'package:anilist/media_detail_query.dart';

void main(List<String> args) {
  String token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6Ijk4NWM3OWFjZTk2ZDc2ZDQwODcxM2FjOTk4OGVkODM3NzBkYmU1ZmY4OWIxYzg4N2Y0ZThjYTJmNzI0ZWU1NjI4NzRmZWY4NDM0ZmMxNGNhIn0.eyJhdWQiOiIxMDYxMyIsImp0aSI6Ijk4NWM3OWFjZTk2ZDc2ZDQwODcxM2FjOTk4OGVkODM3NzBkYmU1ZmY4OWIxYzg4N2Y0ZThjYTJmNzI0ZWU1NjI4NzRmZWY4NDM0ZmMxNGNhIiwiaWF0IjoxNjc3NTc5MTkzLCJuYmYiOjE2Nzc1NzkxOTMsImV4cCI6MTcwOTExNTE5Mywic3ViIjoiNjgwNjEzIiwic2NvcGVzIjpbXX0.tro452f93_bbiasAqtp0IbBt_K-vs6c0OBGBEoHoqDZ6mI7ggCMDo7pryFP0Plx6ogPC1MdgSJcCLUrWUOIywekQj32uGp9FssfNLYH-JNoVjvtug1Y5YpGsfHe6rnY37KQpYhSIvQvhTZlickMMrOgvql6jpXXboibvgXM-non59HB4HeQQkPSCBiFwM9MZF232BSGbi0o0c0UJy5nbdMtSXcS0iG6IyCJ_DsH8BHacZvkRtfKijYB-Y678rDH5eKvE-2Zt-1n8IansFgz8Fhk6jRtCcT0KJyOzojtl1x9XdlZpOfyJKNNqhoFnWebD4Moke5osiULV_-VgSxkBVw9CRbA71qE5dVpdCwLXEYtPcWd2ow-xOd53NjEoDmncKQQi-GoUPpHCH-E6MjpksfZRU4wg85eoRCCEjYlg2X2hiMTqpzpwq5KsRTNU6eE5E95OHP68PO-VfumfM-5wEulfB3OYMCfRBqxXibX34hYIfhT65VNQ0rUbS19g2fxl6sq7cFHdBg4v2OdiRvMWvZ3Un9kmGQU09US0qjKMLY1y5_wW6dVLoXdOCx6WdE3b9mE9kaNtUpvezE1Y_r-ojGkJ7cvRrcE4DmufBWRbL-N_QPh4Bcrjoy-39BY1J4tJfgQS_r42-dFaLOhqggREC0QRbcLcOMzabkcJ7HQ0VKY';
  final client = initClient(accessToken: token);
  final req = GMediaDetailQueryReq(
    (b) => b
      ..vars.id = 21
      ..vars.limit = 5
      ..vars.page = 10
      ..vars.perPage = 20,
  );
  client.request(req).listen((event) {
    print(event.data);
  });
}
