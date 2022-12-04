import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:jayeek/widgets/widgets.dart';

class ForgotForm extends StatelessWidget {
  final Function? onActive, onForget;
  ForgotForm({Key? key, this.onActive, this.onForget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
          child: IntlPhoneField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            onChanged: (phone) {
              print(phone.completeNumber);
            },
            onCountryChanged: (country) {
              print('Country changed to: ' + country.name);
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
          child: const PrimaryButton(text: 'Request New Password',),
        )
      ],
    );
  }
}
