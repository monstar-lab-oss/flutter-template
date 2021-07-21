import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_template/presentation/home/home_screen.dart';

/// Contains classes and helpers for navigation.
class AppRouter {
  static PageRoute onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreenRoute.route:
        return HomeScreenRoute().material();
    }
    throw Exception('Route not handled in onGenerateRoute.');
  }
}

class HomeScreenRoute extends ScreenRoute {
  HomeScreenRoute() : super(route);

  @override
  WidgetBuilder get screen => (_) => const HomeScreen();

  static const route = '/home';
}

abstract class ScreenRoute {
  ScreenRoute(this.name);

  final String name;

  WidgetBuilder get screen;

  PageRoute material() {
    return MaterialPageRoute(
      builder: (context) => screen(context),
      settings: RouteSettings(name: name, arguments: this),
    );
  }

  PageRoute dialog({fullscreenDialog = false}) {
    return MaterialPageRoute(
      fullscreenDialog: fullscreenDialog,
      builder: (context) => screen(context),
      settings: RouteSettings(name: name, arguments: this),
    );
  }

  PageRoute fade() {
    return FadePageRoute(
      screen: screen,
      name: name,
    );
  }
}

class FadePageRoute<T> extends PageRoute<T> {
  FadePageRoute({
    required this.screen,
    required this.name,
  }) : super(settings: RouteSettings(name: name));

  final WidgetBuilder screen;
  final String name;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return FadeTransition(
      opacity: animation,
      child: screen(context),
    );
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(microseconds: 300);

  @override
  Color? get barrierColor => Colors.transparent;

  @override
  String? get barrierLabel => '';
}
