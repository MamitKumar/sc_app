/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class Assets {
  Assets._();

  static const AssetGenImage simpleCashLogo =
      AssetGenImage('assets/Simple Cash logo.png');
  static const AssetGenImage clipboard = AssetGenImage('assets/clipboard.png');
  static const AssetGenImage homebottemicon =
      AssetGenImage('assets/homebottemicon.png');
  static const AssetGenImage mojdeail = AssetGenImage('assets/mojdeail.png');
  static const AssetGenImage myrewardbottemicon =
      AssetGenImage('assets/myrewardbottemicon.png');
  static const AssetGenImage myrewardofferbottemicon =
      AssetGenImage('assets/myrewardofferbottemicon.png');
  static const AssetGenImage profileAvtar =
      AssetGenImage('assets/profile_avtar.png');
  static const AssetGenImage simplecashbcimage =
      AssetGenImage('assets/simplecashbcimage.png');
  static const AssetGenImage spbcc = AssetGenImage('assets/spbcc.png');
  static const AssetGenImage upcommingbottemicon =
      AssetGenImage('assets/upcommingbottemicon.png');
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

  String get path => _assetName;

  String get keyName => _assetName;
}