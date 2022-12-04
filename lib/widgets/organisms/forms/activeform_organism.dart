import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:jayeek/widgets/widgets.dart';
import 'package:jayeek/widgets/widgets.dart' as Styles;

class ActiveForm extends StatelessWidget {
  final Function? onActive, onForget;
  ActiveForm({Key? key, this.onActive, this.onForget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0.w, vertical: 12.0.w),
          child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: Styles.bodyText1,
                    length: 6,
                    obscureText: true,
                    obscuringCharacter: '*',
                    /*obscuringWidget: const FlutterLogo(
                      size: 24,
                    ),*/
                    blinkWhenObscuring: true,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5.0.w),
                      fieldHeight: 40.0.w,
                      fieldWidth: 40.0.w,
                      activeFillColor: Colors.white,
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    //errorAnimationController: errorController,
                    //controller: textEditingController,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      debugPrint(value);
                      ;
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
          child: const PrimaryButton(text: 'Verify',),
        )
      ],
    );
  }
}
