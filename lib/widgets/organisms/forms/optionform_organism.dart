import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jayeek/widgets/widgets.dart';

class OptionForm extends StatelessWidget {
  final Function? onActive, onForget;
  OptionForm({Key? key, this.onActive, this.onForget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        PlainTextButton(text: 'Activation Page', onTap: onActive,),
        SizedBox(height: 14.0.w,),
        PlainTextButton(text: 'Forget Password Page', onTap: onForget,)
      ],
    );
  }
}
