// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum DeviceSize {
  mobile,
  tablet,
  desktop,
}

abstract class FlutterFlowTheme {
  static DeviceSize deviceSize = DeviceSize.mobile;

  static FlutterFlowTheme of(BuildContext context) {
    deviceSize = getDeviceSize(context);
    return LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color black20;
  late Color lightGray;
  late Color textfiled;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  bool get displayLargeIsCustom => typography.displayLargeIsCustom;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  bool get displayMediumIsCustom => typography.displayMediumIsCustom;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  bool get displaySmallIsCustom => typography.displaySmallIsCustom;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  bool get headlineLargeIsCustom => typography.headlineLargeIsCustom;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  bool get headlineMediumIsCustom => typography.headlineMediumIsCustom;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  bool get headlineSmallIsCustom => typography.headlineSmallIsCustom;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  bool get titleLargeIsCustom => typography.titleLargeIsCustom;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  bool get titleMediumIsCustom => typography.titleMediumIsCustom;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  bool get titleSmallIsCustom => typography.titleSmallIsCustom;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  bool get labelLargeIsCustom => typography.labelLargeIsCustom;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  bool get labelMediumIsCustom => typography.labelMediumIsCustom;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  bool get labelSmallIsCustom => typography.labelSmallIsCustom;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  bool get bodyLargeIsCustom => typography.bodyLargeIsCustom;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  bool get bodyMediumIsCustom => typography.bodyMediumIsCustom;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  bool get bodySmallIsCustom => typography.bodySmallIsCustom;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => {
        DeviceSize.mobile: MobileTypography(this),
        DeviceSize.tablet: TabletTypography(this),
        DeviceSize.desktop: DesktopTypography(this),
      }[deviceSize]!;
}

DeviceSize getDeviceSize(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < 479) {
    return DeviceSize.mobile;
  } else if (width < 991) {
    return DeviceSize.tablet;
  } else {
    return DeviceSize.desktop;
  }
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  // 2025 baseline palette (Client role default = Blue).
  // Vendor role suggestion: primary #F97316. Worker role suggestion: primary #16A34A.
  late Color primary = const Color(0xFF2563EB); // Blue (trust & discovery)
  late Color secondary = const Color(0xFFEFF6FF); // Blue tint surface
  late Color tertiary = const Color(0xFFF97316); // Orange accent (optional)
  late Color alternate = const Color(0xFFE6E8EC); // Borders / dividers
  late Color primaryText = const Color(0xFF111827);
  late Color secondaryText = const Color(0xFF6B7280);
  late Color primaryBackground = const Color(0xFFF6F7F9); // Neutral page bg
  late Color secondaryBackground = const Color(0xFFFFFFFF); // Surface
  late Color accent1 = const Color(0x1A2563EB); // 10% primary
  late Color accent2 = const Color(0x14000000); // Soft shadow tint
  late Color accent3 = const Color(0x1AF97316); // 10% orange
  late Color accent4 = const Color(0xCCFFFFFF);
  late Color success = const Color(0xFF16A34A);
  late Color warning = const Color(0xFFF59E0B);
  late Color error = const Color(0xFFEF4444);
  late Color info = const Color(0xFF3B82F6);

  // Legacy custom fields (kept for compatibility with existing widgets).
  late Color black20 = const Color(0xFFE6E8EC);
  late Color lightGray = const Color(0xFFF6F7F9);
  late Color textfiled = const Color(0xFF6B7280);
}

abstract class Typography {
  String get displayLargeFamily;
  bool get displayLargeIsCustom;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  bool get displayMediumIsCustom;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  bool get displaySmallIsCustom;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  bool get headlineLargeIsCustom;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  bool get headlineMediumIsCustom;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  bool get headlineSmallIsCustom;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  bool get titleLargeIsCustom;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  bool get titleMediumIsCustom;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  bool get titleSmallIsCustom;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  bool get labelLargeIsCustom;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  bool get labelMediumIsCustom;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  bool get labelSmallIsCustom;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  bool get bodyLargeIsCustom;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  bool get bodyMediumIsCustom;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  bool get bodySmallIsCustom;
  TextStyle get bodySmall;
}

class MobileTypography extends Typography {
  MobileTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Satoshi';
  bool get displayLargeIsCustom => true;
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 32.0,
        height: 1.15,
      );
  String get displayMediumFamily => 'Satoshi';
  bool get displayMediumIsCustom => true;
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 28.0,
        height: 1.15,
      );
  String get displaySmallFamily => 'Satoshi';
  bool get displaySmallIsCustom => true;
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 28.0,
        height: 1.2,
      );
  String get headlineLargeFamily => 'Satoshi';
  bool get headlineLargeIsCustom => true;
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 24.0,
        height: 1.2,
      );
  String get headlineMediumFamily => 'Satoshi';
  bool get headlineMediumIsCustom => true;
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        height: 1.25,
      );
  String get headlineSmallFamily => 'Satoshi';
  bool get headlineSmallIsCustom => true;
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
        height: 1.25,
      );
  String get titleLargeFamily => 'Satoshi';
  bool get titleLargeIsCustom => true;
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 1.25,
      );
  String get titleMediumFamily => 'Satoshi';
  bool get titleMediumIsCustom => true;
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        height: 1.3,
      );
  String get titleSmallFamily => 'Satoshi';
  bool get titleSmallIsCustom => true;
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        height: 1.3,
      );
  String get labelLargeFamily => 'Satoshi';
  bool get labelLargeIsCustom => true;
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        height: 1.2,
      );
  String get labelMediumFamily => 'Satoshi';
  bool get labelMediumIsCustom => true;
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 1.2,
      );
  String get labelSmallFamily => 'Satoshi';
  bool get labelSmallIsCustom => true;
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 1.2,
      );
  String get bodyLargeFamily => 'Satoshi';
  bool get bodyLargeIsCustom => true;
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 1.35,
      );
  String get bodyMediumFamily => 'Satoshi';
  bool get bodyMediumIsCustom => true;
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 1.35,
      );
  String get bodySmallFamily => 'Satoshi';
  bool get bodySmallIsCustom => true;
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        height: 1.35,
      );
}

class TabletTypography extends Typography {
  TabletTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Satoshi';
  bool get displayLargeIsCustom => true;
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 36.0,
        height: 1.15,
      );
  String get displayMediumFamily => 'Satoshi';
  bool get displayMediumIsCustom => true;
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 32.0,
        height: 1.15,
      );
  String get displaySmallFamily => 'Satoshi';
  bool get displaySmallIsCustom => true;
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 28.0,
        height: 1.2,
      );
  String get headlineLargeFamily => 'Satoshi';
  bool get headlineLargeIsCustom => true;
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 24.0,
        height: 1.2,
      );
  String get headlineMediumFamily => 'Satoshi';
  bool get headlineMediumIsCustom => true;
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        height: 1.25,
      );
  String get headlineSmallFamily => 'Satoshi';
  bool get headlineSmallIsCustom => true;
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
        height: 1.25,
      );
  String get titleLargeFamily => 'Satoshi';
  bool get titleLargeIsCustom => true;
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16.0,
        height: 1.25,
      );
  String get titleMediumFamily => 'Satoshi';
  bool get titleMediumIsCustom => true;
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14.0,
        height: 1.3,
      );
  String get titleSmallFamily => 'Satoshi';
  bool get titleSmallIsCustom => true;
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        height: 1.3,
      );
  String get labelLargeFamily => 'Satoshi';
  bool get labelLargeIsCustom => true;
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        height: 1.2,
      );
  String get labelMediumFamily => 'Satoshi';
  bool get labelMediumIsCustom => true;
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 1.2,
      );
  String get labelSmallFamily => 'Satoshi';
  bool get labelSmallIsCustom => true;
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 1.2,
      );
  String get bodyLargeFamily => 'Satoshi';
  bool get bodyLargeIsCustom => true;
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 1.35,
      );
  String get bodyMediumFamily => 'Satoshi';
  bool get bodyMediumIsCustom => true;
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 1.35,
      );
  String get bodySmallFamily => 'Satoshi';
  bool get bodySmallIsCustom => true;
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        height: 1.35,
      );
}

class DesktopTypography extends Typography {
  DesktopTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Satoshi';
  bool get displayLargeIsCustom => true;
  TextStyle get displayLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 40.0,
        height: 1.15,
      );
  String get displayMediumFamily => 'Satoshi';
  bool get displayMediumIsCustom => true;
  TextStyle get displayMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 36.0,
        height: 1.15,
      );
  String get displaySmallFamily => 'Satoshi';
  bool get displaySmallIsCustom => true;
  TextStyle get displaySmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 32.0,
        height: 1.2,
      );
  String get headlineLargeFamily => 'Satoshi';
  bool get headlineLargeIsCustom => true;
  TextStyle get headlineLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w700,
        fontSize: 28.0,
        height: 1.2,
      );
  String get headlineMediumFamily => 'Satoshi';
  bool get headlineMediumIsCustom => true;
  TextStyle get headlineMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 22.0,
        height: 1.25,
      );
  String get headlineSmallFamily => 'Satoshi';
  bool get headlineSmallIsCustom => true;
  TextStyle get headlineSmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
        height: 1.25,
      );
  String get titleLargeFamily => 'Satoshi';
  bool get titleLargeIsCustom => true;
  TextStyle get titleLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 18.0,
        height: 1.25,
      );
  String get titleMediumFamily => 'Satoshi';
  bool get titleMediumIsCustom => true;
  TextStyle get titleMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 15.0,
        height: 1.3,
      );
  String get titleSmallFamily => 'Satoshi';
  bool get titleSmallIsCustom => true;
  TextStyle get titleSmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        height: 1.3,
      );
  String get labelLargeFamily => 'Satoshi';
  bool get labelLargeIsCustom => true;
  TextStyle get labelLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 13.0,
        height: 1.2,
      );
  String get labelMediumFamily => 'Satoshi';
  bool get labelMediumIsCustom => true;
  TextStyle get labelMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 1.2,
      );
  String get labelSmallFamily => 'Satoshi';
  bool get labelSmallIsCustom => true;
  TextStyle get labelSmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
        height: 1.2,
      );
  String get bodyLargeFamily => 'Satoshi';
  bool get bodyLargeIsCustom => true;
  TextStyle get bodyLarge => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 16.0,
        height: 1.35,
      );
  String get bodyMediumFamily => 'Satoshi';
  bool get bodyMediumIsCustom => true;
  TextStyle get bodyMedium => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.primaryText,
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        height: 1.35,
      );
  String get bodySmallFamily => 'Satoshi';
  bool get bodySmallIsCustom => true;
  TextStyle get bodySmall => TextStyle(
        fontFamily: 'Satoshi',
        color: theme.secondaryText,
        fontWeight: FontWeight.w400,
        fontSize: 12.0,
        height: 1.35,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    TextStyle? font,
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = false,
    TextDecoration? decoration,
    double? lineHeight,
    List<Shadow>? shadows,
    String? package,
  }) {
    if (useGoogleFonts && fontFamily != null) {
      font = GoogleFonts.getFont(fontFamily,
          fontWeight: fontWeight ?? this.fontWeight,
          fontStyle: fontStyle ?? this.fontStyle);
    }

    return font != null
        ? font.copyWith(
            color: color ?? this.color,
            fontSize: fontSize ?? this.fontSize,
            letterSpacing: letterSpacing ?? this.letterSpacing,
            fontWeight: fontWeight ?? this.fontWeight,
            fontStyle: fontStyle ?? this.fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          )
        : copyWith(
            fontFamily: fontFamily,
            package: package,
            color: color,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
            fontWeight: fontWeight,
            fontStyle: fontStyle,
            decoration: decoration,
            height: lineHeight,
            shadows: shadows,
          );
  }
}
