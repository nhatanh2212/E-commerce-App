import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Scaffold;
import '../../../features/common/nointernet/view/no_internet_view.dart';
import '../../../features/home/view/home_view.dart';
import '../../../features/map/GoogleMapsScreen.dart';
import '../../../main.dart';

class NavigationRoute {
  static Route<CupertinoPageRoute> generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments; //argumanlar

    switch (settings.name) {
      case MyApp.path:
        return CupertinoPageRoute(builder: (_) => const MyApp());
      case HomeView.path:
        return CupertinoPageRoute(builder: (_) => const HomeView());
      case NoInternetView.path:
        return CupertinoPageRoute(builder: (_) => const NoInternetView());
      case GoogleMapsScreen.path:
        return CupertinoPageRoute(builder: (_) => GoogleMapsScreen());


      default:
        return CupertinoPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Not Found'))),
        );
    }
  }
}
