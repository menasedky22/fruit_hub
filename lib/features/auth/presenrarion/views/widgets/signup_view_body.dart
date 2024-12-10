import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presenrarion/views/widgets/terms_and_condition.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
            ),
            child: SingleChildScrollView(
                child: Column(children: [
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                hintText: 'الاسم كامل',
                textInputType: TextInputType.name,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextFormField(
                suffixicon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffc9cecf),
                ),
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 16,
              ),
              TermsAndCondition(),
            ]))));
  }
}
