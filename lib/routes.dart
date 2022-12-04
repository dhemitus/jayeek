import 'package:flutter/material.dart';
import 'package:jayeek/modules/modules.dart';

class Routes {
  static final Map<String, WidgetBuilder> screens = {
    ActivateRoute.path: (BuildContext context) => const ActivateScreen(),
    ForgetPasswordRoute.path: (BuildContext context) => ForgetPasswordScreen(),
    UnknownRoute.path: (BuildContext context) => const UnknownScreen(),
  };
}
