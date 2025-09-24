// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import "package:image_picker/image_picker.dart";
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kurumi/src/core/core.dart';

class ImageTraceItem {
  final int? anilist;
  final String? filename;
  final int? episode;
  final double? from;
  final double? to;
  final double? duration;
  final double? similarity;
  final String? video;
  final String? image;
  ImageTraceItem({
    required this.anilist,
    required this.filename,
    required this.episode,
    required this.from,
    required this.to,
    required this.duration,
    required this.similarity,
    required this.video,
    required this.image,
  });

  ImageTraceItem copyWith({
    int? anilist,
    String? filename,
    int? episode,
    double? from,
    double? to,
    double? duration,
    double? similarity,
    String? video,
    String? image,
  }) {
    return ImageTraceItem(
      anilist: anilist ?? this.anilist,
      filename: filename ?? this.filename,
      episode: episode ?? this.episode,
      from: from ?? this.from,
      to: to ?? this.to,
      duration: duration ?? this.duration,
      similarity: similarity ?? this.similarity,
      video: video ?? this.video,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anilist': anilist,
      'filename': filename,
      'episode': episode,
      'from': from,
      'to': to,
      'duration': duration,
      'similarity': similarity,
      'video': video,
      'image': image,
    };
  }

  factory ImageTraceItem.fromMap(Map<String, dynamic> map) {
    return ImageTraceItem(
      anilist: map['anilist'] != null ? map['anilist'] as int : null,
      filename: map['filename'] != null ? map['filename'] as String : null,
      episode: map['episode'] != null ? map['episode'] as int : null,
      from: map['from'] != null ? map['from'] as double : null,
      to: map['to'] != null ? map['to'] as double : null,
      duration: map['duration'] != null ? map['duration'] as double : null,
      similarity: map['similarity'] != null
          ? map['similarity'] as double
          : null,
      video: map['video'] != null ? map['video'] as String : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageTraceItem.fromJson(String source) =>
      ImageTraceItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ImageTraceItem(anilist: $anilist, filename: $filename, episode: $episode, from: $from, to: $to, duration: $duration, similarity: $similarity, video: $video, image: $image)';
  }

  @override
  bool operator ==(covariant ImageTraceItem other) {
    if (identical(this, other)) return true;

    return other.anilist == anilist &&
        other.filename == filename &&
        other.episode == episode &&
        other.from == from &&
        other.to == to &&
        other.duration == duration &&
        other.similarity == similarity &&
        other.video == video &&
        other.image == image;
  }

  @override
  int get hashCode {
    return anilist.hashCode ^
        filename.hashCode ^
        episode.hashCode ^
        from.hashCode ^
        to.hashCode ^
        duration.hashCode ^
        similarity.hashCode ^
        video.hashCode ^
        image.hashCode;
  }
}

class ImageTrace {
  final List<ImageTraceItem> result;
  final Uint8List? image;
  final int frameCount;
  final String error;
  ImageTrace({
    required this.result,
    this.image,
    required this.frameCount,
    required this.error,
  });

  ImageTrace copyWith({
    List<ImageTraceItem>? result,
    Uint8List? image,
    int? frameCount,
    String? error,
  }) {
    return ImageTrace(
      result: result ?? this.result,
      image: image ?? this.image,
      frameCount: frameCount ?? this.frameCount,
      error: error ?? this.error,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'result': result.map((x) => x.toMap()).toList(),
      'image': null,
      'frameCount': frameCount,
      'error': error,
    };
  }

  factory ImageTrace.fromMap(Map<String, dynamic> map) {
    return ImageTrace(
      result: List<ImageTraceItem>.from(
        (map['result']).map<ImageTraceItem>(
          (x) => ImageTraceItem.fromMap(x as Map<String, dynamic>),
        ),
      ),
      image: null,
      frameCount: map['frameCount'] as int,
      error: map['error'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageTrace.fromJson(String source) =>
      ImageTrace.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ImageTrace(result: $result, image: $image, frameCount: $frameCount, error: $error)';
  }

  @override
  bool operator ==(covariant ImageTrace other) {
    if (identical(this, other)) return true;

    return listEquals(other.result, result) &&
        other.image == image &&
        other.frameCount == frameCount &&
        other.error == error;
  }

  @override
  int get hashCode {
    return result.hashCode ^
        image.hashCode ^
        frameCount.hashCode ^
        error.hashCode;
  }
}

final traceImageProvider =
    StateNotifierProvider<ImageTraceNotifier, ImageTrace?>((ref) {
      return ImageTraceNotifier(ref);
    });

class ImageTraceNotifier extends StateNotifier<ImageTrace?> {
  final Dio dio = Dio();
  final Ref ref;
  final ImagePicker _picker = ImagePicker();
  ImageTraceNotifier(this.ref) : super(null);

  Future<ImageTrace> imageSearch({
    String imageUrl = "https://images.plurk.com/32B15UXxymfSMwKGTObY5e.jpg",
  }) async {
    final response = await dio.get(
      "https://api.trace.moe/search?url=$imageUrl",
    );
    final data = ImageTrace.fromMap(response.data);
    state = data;
    return data;
  }

  Future<ImageTrace?> uploadImage() async {
    final XFile? file;
    try {
      file = await _picker.pickImage(source: ImageSource.gallery);
      if (file == null) {
        return null;
      }
      final imageBytes = await file.readAsBytes();

      final response = await dio.get(
        "https://api.trace.moe/search",
        data: Stream.fromIterable(imageBytes.map((e) => [e])),
        options: Options(
          headers: {
            "Content-Type": "image/jpeg",
            Headers.contentLengthHeader: imageBytes.length,
          },
        ),
      );
      log.d(response.data);
      final data = ImageTrace.fromMap(response.data);
      state = data.copyWith(image: imageBytes);
      return data;
    } catch (e, stack) {
      log.e(e.toString());
      log.w(stack.toString());
      return null;
    }
  }

  void clear() {
    state = null;
  }
}
