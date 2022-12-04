import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/widgets/widgets.dart';
import 'package:jayeek/widgets/widgets.dart' as Styles;

class ForgotPage extends StatelessWidget {
  final Widget? child;

  const ForgotPage({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.purple4633AE,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 262.0.w, bottom: 68.0.w, left: 22.0.w, right: 22.0.w),
              child: const LogoContainer(),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 24.0.w),
              child: BodyText1('Enter Your Phone No.'),
            ),
            BaseContainer(
              child: child ?? const BaseContainer()
            ),
            Padding(
              padding: EdgeInsets.only(top: 54.0.w),
              child: BodyText1('Back to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
