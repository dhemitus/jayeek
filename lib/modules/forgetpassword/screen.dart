import 'package:flutter/material.dart';
import 'package:jayeek/modules/modules.dart';
import 'package:jayeek/widgets/widgets.dart';

class ForgetPasswordScreen extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';

  ForgetPasswordScreen({Key? key}) : super(key: ForgetPasswordRoute.key);

  @override
  Widget build(BuildContext context) {
    return ForgotPage(
      child: ForgotForm(),
    );
  }
}
