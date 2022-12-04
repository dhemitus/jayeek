import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/widgets/styles/styles.dart' as Styles;

class BodyText1 extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final Color? color;
  final TextAlign? align;
  final TextOverflow? overflow;

  const BodyText1(this.text, {Key? key, this.style, this.color, this.align,
    this.overflow}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
    text ?? '',
    style: style?.copyWith(
      fontSize: 16.0.sp,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.5.sp,
      color: color ?? Colors.white
    ) ?? Styles.bodyText1.copyWith(
      color: color ?? Colors.white
    ),
    textAlign: align,
    overflow: overflow,
  );
}
