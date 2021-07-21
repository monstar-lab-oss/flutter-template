import 'package:flutter/material.dart';
import 'package:flutter_template/dependencies/dependencies.dart';
import 'package:flutter_template/presentation/app.dart';
import 'package:flutter_template/presentation/app_flavor.dart';

void mainCommon(AppFlavor flavor) async {
  await Dependencies.inject(flavor);
  runApp(App());
}
