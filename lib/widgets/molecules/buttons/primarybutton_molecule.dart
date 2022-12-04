import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/widgets/widgets.dart';
import 'package:jayeek/widgets/widgets.dart' as Styles;

class PrimaryButton extends StatelessWidget {
  final Function? onTap;
  final String? text;
  final bool? enable;

  const PrimaryButton({Key? key, this.onTap, this.text = '', this.enable = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => enable! ? onTap?.call() : {},
      child: BaseContainer(
          radius: BorderRadius.circular(52.0.w),
          height: 52.0.w,
          color: enable!
              ? Styles.orangeF9B620
              : Styles.purple4633AE,
          child: ButtonText(
            text ?? '',
            color: enable!
                ? Colors.white
                : Colors.black12,
          )
      ),
    );
  }
}

