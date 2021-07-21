import 'package:flutter/material.dart';
import 'package:flutter_template/presentation/app_router.dart';
import 'package:flutter_template/presentation/resources/resources.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: getTemplateTheme(Brightness.light),
      darkTheme: getTemplateTheme(Brightness.dark),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
