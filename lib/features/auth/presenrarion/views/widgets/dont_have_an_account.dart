import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_style.dart';

import '../singup_view.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(
        text: 'لا تمتلك حساب؟ ',
        style: TextStyles.semiBold16.copyWith(
          color: const Color(0xff949d9e),
        ),
      ),
      TextSpan(
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            Navigator.of(context).pushNamed(SingupView.routeName);
          },
        text: 'قم بإنشاء حساب',
        style: TextStyles.semiBold16.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    ]));
  }
}
