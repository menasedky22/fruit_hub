import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_style.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xffdcdede),
          ),
        ),
        SizedBox(width: 18),
        Text('أو', style: TextStyles.semiBold16),
        SizedBox(width: 18),
        Expanded(
          child: Divider(
            color: Color(0xffdcdede),
          ),
        ),
      ],
    );
  }
}
