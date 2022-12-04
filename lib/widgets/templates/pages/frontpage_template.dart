import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/widgets/widgets.dart';
import 'package:jayeek/widgets/widgets.dart' as Styles;

class FrontPage extends StatelessWidget {
  final Widget? child;

  const FrontPage({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.purple4633AE,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 262.0.w, bottom: 68.0.w, left: 22.0.w, right: 22.0.w),
              child: const LogoContainer(),
            ),
            BaseContainer(
              child: child ?? const BaseContainer()
            )
          ],
        ),
    );
  }
}
