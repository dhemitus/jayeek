import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/modules/modules.dart';
import 'package:jayeek/routes.dart';
import 'package:jayeek/blocs.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Blocs.blocsList(
      HomeScreen(navKey: _navKey,),
      _navKey
    );
  }
}

class HomeScreen extends StatelessWidget {

  final GlobalKey<NavigatorState> navKey;
  const HomeScreen({Key? key, required this.navKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(414, 736),

    builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "JAYEEK",
        navigatorKey: navKey,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: Routes.screens,
        onGenerateRoute: (_) => UnknownRoute.route,
      );
    });
  }
}
