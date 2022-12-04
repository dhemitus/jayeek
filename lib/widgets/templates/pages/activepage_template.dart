import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/widgets/widgets.dart';
import 'package:jayeek/widgets/widgets.dart' as Styles;

class ActivePage extends StatelessWidget {
  final Widget? child;

  const ActivePage({Key? key, this.child}) : super(key: key);

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
              padding: EdgeInsets.only(bottom: 4.0.w),
              child: const BodyText1('Verification Code'),
            ),
            const BodyText2('Please, Enter codes sent To'),
            Padding(
              padding: EdgeInsets.only(bottom: 4.0.w),
              child: const BodyText2('+9667512310232'),
            ),
            BaseContainer(
              child: child ?? const BaseContainer()
            ),
            Padding(
              padding: EdgeInsets.only(top: 54.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const BodyText2('No code? '),
                  const PlainTextButton(text: 'Resend',)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
