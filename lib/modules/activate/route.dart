import 'package:flutter/material.dart';
import 'package:jayeek/modules/modules.dart';

class ActivateRoute {
  static const String path = '/activate';
  static const Key key = Key('__activateScreen__');
  static Route<void> route = MaterialPageRoute<void>(builder: (_) => const ActivateScreen());
}
