// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// Directory path: assets/fonts/OpenSans
  $AssetsFontsOpenSansGen get openSans => const $AssetsFontsOpenSansGen();
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/Illustration Splash Screen.svg
  SvgGenImage get illustrationSplashScreen =>
      const SvgGenImage('assets/image/Illustration Splash Screen.svg');

  /// File path: assets/image/Illustration Yes or No.svg
  SvgGenImage get illustrationYesOrNo =>
      const SvgGenImage('assets/image/Illustration Yes or No.svg');

  /// File path: assets/image/Logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/image/Logo.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    illustrationSplashScreen,
    illustrationYesOrNo,
    logo,
  ];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/Search.json
  String get search => 'assets/lottie/Search.json';

  /// File path: assets/lottie/error.json
  String get error => 'assets/lottie/error.json';

  /// List of all assets
  List<String> get values => [search, error];
}

class $AssetsFontsOpenSansGen {
  const $AssetsFontsOpenSansGen();

  /// File path: assets/fonts/OpenSans/OpenSans-Bold.ttf
  String get openSansBold => 'assets/fonts/OpenSans/OpenSans-Bold.ttf';

  /// File path: assets/fonts/OpenSans/OpenSans-ExtraBold.ttf
  String get openSansExtraBold =>
      'assets/fonts/OpenSans/OpenSans-ExtraBold.ttf';

  /// File path: assets/fonts/OpenSans/OpenSans-Medium.ttf
  String get openSansMedium => 'assets/fonts/OpenSans/OpenSans-Medium.ttf';

  /// File path: assets/fonts/OpenSans/OpenSans-Regular.ttf
  String get openSansRegular => 'assets/fonts/OpenSans/OpenSans-Regular.ttf';

  /// File path: assets/fonts/OpenSans/OpenSans-SemiBold.ttf
  String get openSansSemiBold => 'assets/fonts/OpenSans/OpenSans-SemiBold.ttf';

  /// List of all assets
  List<String> get values => [
    openSansBold,
    openSansExtraBold,
    openSansMedium,
    openSansRegular,
    openSansSemiBold,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
