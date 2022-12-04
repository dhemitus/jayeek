import 'package:flutter/material.dart';
import 'package:jayeek/modules/modules.dart';

class ForgetPasswordRoute {
  static const String path = '/forgetpassword';
  static const Key key = Key('__forgetPasswordScreen__');
  static Route<void> route = MaterialPageRoute<void>(builder: (_) => ForgetPasswordScreen());
}
