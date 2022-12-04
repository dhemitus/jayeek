import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/widgets/widgets.dart';
import 'package:jayeek/utilities/utilities.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      width: 117.0.w,
      height: 53.0.w,
      image: ImageUtilities.imageAsset('assets/images/logojayeek.png', fit: BoxFit.contain)
    );
  }
}
