import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/widgets/widgets.dart';
import 'package:jayeek/widgets/widgets.dart' as Styles;

class PlainTextButton extends StatelessWidget {
  final Function? onTap;
  final String? text;
  final bool? enable;

  const PlainTextButton({Key? key, this.onTap, this.text = '', this.enable = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => enable! ? onTap?.call() : {},
      child: ButtonText(
        text ?? '',
        color: enable!
            ? Styles.orangeFA981F
            : Colors.black12,
      ),
    );
  }
}

