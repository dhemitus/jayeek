import 'package:flutter/material.dart';
import 'package:jayeek/modules/modules.dart';
import 'package:jayeek/widgets/widgets.dart';

class ActivateScreen extends StatelessWidget {

  const ActivateScreen({Key? key}) : super(key: ActivateRoute.key);

  @override
  Widget build(BuildContext context) {
    return ActivePage(
      child: ActiveForm(),
    );
  }
}
