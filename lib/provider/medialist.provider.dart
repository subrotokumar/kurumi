import 'package:anilist/graphql_client.dart';
import 'package:anilist/medialist_collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MediaListCollectionData {
  final GMediaListCollectionData? data;
  final String accessCode;
  final int userId;
  MediaListCollectionData({
    this.data,
    required this.accessCode,
    required this.userId,
  });

  MediaListCollectionData copyWith({
    GMediaListCollectionData? data,
    String? accessCode,
    int? userId,
  }) {
    return MediaListCollectionData(
      data: data ?? this.data,
      accessCode: accessCode ?? this.accessCode,
      userId: userId ?? this.userId,
    );
  }

  @override
  String toString() =>
      'MediaListCollectionData(data: $data, accessCode: $accessCode, userId: $userId)';

  @override
  bool operator ==(covariant MediaListCollectionData other) {
    if (identical(this, other)) return true;

    return other.data == data &&
        other.accessCode == accessCode &&
        other.userId == userId;
  }

  @override
  int get hashCode => data.hashCode ^ accessCode.hashCode ^ userId.hashCode;
}

class MediaListNotifier extends StateNotifier<MediaListCollectionData> {
  MediaListNotifier()
      : super(MediaListCollectionData(accessCode: '', userId: -1));

  void init(String _accessToken, int userId) {
    state = state.copyWith(
      accessCode: _accessToken,
      userId: userId,
    );
  }

  Future<bool> fetch() async {
    bool flag = false;
    final client = initClient(accessToken: state.accessCode);
    final request = GMediaListCollectionReq(
      (b) => b
        ..vars.status = GMediaListStatus.CURRENT
        ..vars.type = GMediaType.ANIME
        ..vars.userId = state.userId,
    );
    final response = await client.request(request).first;
    if (response.data != null) {
      final d = GMediaListCollectionData.fromJson(response.data!.toJson());
      state.copyWith(data: d);
      flag = true;
    }
    return flag;
  }
}
