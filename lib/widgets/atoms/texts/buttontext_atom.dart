import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/widgets/styles/styles.dart' as Styles;

class ButtonText extends StatelessWidget {
  final String? text;
  final TextStyle? style;
  final Color? color;
  final TextAlign? align;
  final TextOverflow? overflow;

  const ButtonText(this.text, {Key? key, this.style, this.color, this.align,
    this.overflow}) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
    text ?? '',
    style: style?.copyWith(
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        letterSpacing: 1.25.sp,
        color: color ?? Colors.white
    ) ?? Styles.buttonText.copyWith(
        color: color ?? Colors.white
    ),
    textAlign: align,
    overflow: overflow,
  );
}
