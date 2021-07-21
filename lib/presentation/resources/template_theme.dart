import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/resources/resources.dart';

ThemeData getTemplateTheme(Brightness brightness) {
  final colors = brightness == Brightness.light ? colorsLight : colorsDark;

  return ThemeData(
    primaryColor: colors.backgroundPrimary,
    backgroundColor: colors.backgroundPrimary,
    scaffoldBackgroundColor: colors.backgroundPrimary,
    fontFamily: TemplateFonts.poppins,
  );
}
