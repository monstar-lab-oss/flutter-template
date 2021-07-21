import 'package:flutter/material.dart';

class TemplateColors {
  const TemplateColors({
    required this.backgroundPrimary,
    required this.backgroundSecondary,
    required this.labelPrimary,
    required this.labelSecondary,
  });

  final Color backgroundPrimary;
  final Color backgroundSecondary;
  final Color labelPrimary;
  final Color labelSecondary;
}

const colorsLight = TemplateColors(
  backgroundPrimary: Color.fromRGBO(255, 255, 255, 1),
  backgroundSecondary: Color.fromRGBO(241, 241, 241, 1),
  labelPrimary: Color.fromRGBO(28, 28, 28, 1),
  labelSecondary: Color.fromRGBO(128, 128, 128, 1),
);

const colorsDark = TemplateColors(
  backgroundPrimary: Color.fromRGBO(26, 26, 29, 1),
  backgroundSecondary: Color.fromRGBO(53, 53, 54, 1),
  labelPrimary: Color.fromRGBO(255, 255, 255, 1),
  labelSecondary: Color.fromRGBO(166, 166, 166, 1),
);

extension AppColorsExtension on BuildContext {
  TemplateColors get colors {
    final brightness = MediaQuery.of(this).platformBrightness;
    switch (brightness) {
      case Brightness.light:
        return colorsLight;
      case Brightness.dark:
        return colorsDark;
      default:
        return colorsLight;
    }
  }
}
