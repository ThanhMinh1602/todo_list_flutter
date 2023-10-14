/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/apple_ic.svg
  String get appleIc => 'assets/icons/apple_ic.svg';

  /// File path: assets/icons/back_ic.svg
  String get backIc => 'assets/icons/back_ic.svg';

  /// File path: assets/icons/calendar_ic.svg
  String get calendarIc => 'assets/icons/calendar_ic.svg';

  /// File path: assets/icons/flag.svg
  String get flag => 'assets/icons/flag.svg';

  /// File path: assets/icons/flag_ic.svg
  String get flagIc => 'assets/icons/flag_ic.svg';

  /// File path: assets/icons/focuse_ic.svg
  String get focuseIc => 'assets/icons/focuse_ic.svg';

  /// File path: assets/icons/google_ic.svg
  String get googleIc => 'assets/icons/google_ic.svg';

  /// File path: assets/icons/home_ic.svg
  String get homeIc => 'assets/icons/home_ic.svg';

  /// File path: assets/icons/ic_calendar.svg
  String get icCalendar => 'assets/icons/ic_calendar.svg';

  /// File path: assets/icons/ic_calendar_active.svg
  String get icCalendarActive => 'assets/icons/ic_calendar_active.svg';

  /// File path: assets/icons/ic_focus_active.svg
  String get icFocusActive => 'assets/icons/ic_focus_active.svg';

  /// File path: assets/icons/ic_focuse.svg
  String get icFocuse => 'assets/icons/ic_focuse.svg';

  /// File path: assets/icons/ic_home.svg
  String get icHome => 'assets/icons/ic_home.svg';

  /// File path: assets/icons/ic_home_active.svg
  String get icHomeActive => 'assets/icons/ic_home_active.svg';

  /// File path: assets/icons/ic_profile.svg
  String get icProfile => 'assets/icons/ic_profile.svg';

  /// File path: assets/icons/index_home_active.svg
  String get indexHomeActive => 'assets/icons/index_home_active.svg';

  /// File path: assets/icons/menu_appbar_ic.svg
  String get menuAppbarIc => 'assets/icons/menu_appbar_ic.svg';

  /// File path: assets/icons/profile_ic.svg
  String get profileIc => 'assets/icons/profile_ic.svg';

  /// File path: assets/icons/send.svg
  String get send => 'assets/icons/send.svg';

  /// File path: assets/icons/tag.svg
  String get tag => 'assets/icons/tag.svg';

  /// File path: assets/icons/timer.svg
  String get timer => 'assets/icons/timer.svg';

  /// File path: assets/icons/university_ic.svg
  String get universityIc => 'assets/icons/university_ic.svg';

  /// File path: assets/icons/work_ic.svg
  String get workIc => 'assets/icons/work_ic.svg';

  /// List of all assets
  List<String> get values => [
        appleIc,
        backIc,
        calendarIc,
        flag,
        flagIc,
        focuseIc,
        googleIc,
        homeIc,
        icCalendar,
        icCalendarActive,
        icFocusActive,
        icFocuse,
        icHome,
        icHomeActive,
        icProfile,
        indexHomeActive,
        menuAppbarIc,
        profileIc,
        send,
        tag,
        timer,
        universityIc,
        workIc
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/backgroundnolisst.svg
  String get backgroundnolisst => 'assets/images/backgroundnolisst.svg';

  /// File path: assets/images/list_null.svg
  String get listNull => 'assets/images/list_null.svg';

  /// File path: assets/images/logo_welcome.svg
  String get logoWelcome => 'assets/images/logo_welcome.svg';

  /// File path: assets/images/splash_1.svg
  String get splash1 => 'assets/images/splash_1.svg';

  /// File path: assets/images/splash_2.svg
  String get splash2 => 'assets/images/splash_2.svg';

  /// File path: assets/images/splash_3.svg
  String get splash3 => 'assets/images/splash_3.svg';

  /// List of all assets
  List<String> get values =>
      [backgroundnolisst, listNull, logoWelcome, splash1, splash2, splash3];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
