/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class $AssetsGifsGen {
  const $AssetsGifsGen();

  /// File path: assets/gifs/aurora.gif
  AssetGenImage get aurora => const AssetGenImage('assets/gifs/aurora.gif');

  /// File path: assets/gifs/kakashi.gif
  AssetGenImage get kakashi => const AssetGenImage('assets/gifs/kakashi.gif');

  /// File path: assets/gifs/splash.gif
  AssetGenImage get splash => const AssetGenImage('assets/gifs/splash.gif');

  /// List of all assets
  List<AssetGenImage> get values => [aurora, kakashi, splash];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_naruto.png
  AssetGenImage get icNaruto =>
      const AssetGenImage('assets/icons/ic_naruto.png');

  /// List of all assets
  List<AssetGenImage> get values => [icNaruto];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bmc.png
  AssetGenImage get bmc => const AssetGenImage('assets/images/bmc.png');

  /// File path: assets/images/splash.jpg
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [bmc, splash];
}

class $AssetsLottiesGen {
  const $AssetsLottiesGen();

  /// File path: assets/lotties/ghibli-tribute.json
  LottieGenImage get ghibliTribute =>
      const LottieGenImage('assets/lotties/ghibli-tribute.json');

  /// File path: assets/lotties/loading-gif-animation.json
  LottieGenImage get loadingGifAnimation =>
      const LottieGenImage('assets/lotties/loading-gif-animation.json');

  /// File path: assets/lotties/train.json
  LottieGenImage get train => const LottieGenImage('assets/lotties/train.json');

  /// File path: assets/lotties/ufo.json
  LottieGenImage get ufo => const LottieGenImage('assets/lotties/ufo.json');

  /// File path: assets/lotties/weee.json
  LottieGenImage get weee => const LottieGenImage('assets/lotties/weee.json');

  /// List of all assets
  List<LottieGenImage> get values =>
      [ghibliTribute, loadingGifAnimation, train, ufo, weee];
}

class $AssetsMetaGen {
  const $AssetsMetaGen();

  /// File path: assets/meta/ninja.png
  AssetGenImage get ninja => const AssetGenImage('assets/meta/ninja.png');

  /// List of all assets
  List<AssetGenImage> get values => [ninja];
}

class Assets {
  Assets._();

  static const $AssetsGifsGen gifs = $AssetsGifsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottiesGen lotties = $AssetsLottiesGen();
  static const $AssetsMetaGen meta = $AssetsMetaGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
