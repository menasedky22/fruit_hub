import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_style.dart';
import 'package:svg_flutter/svg.dart';

class TextButtonIcon extends StatelessWidget {
  const TextButtonIcon(
      {super.key, this.onPressed, required this.image, required this.title});
  final VoidCallback? onPressed;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
          side: const BorderSide(color: Color(0xffdcdede), width: 1),
          borderRadius: BorderRadius.circular(16),
        )),
        onPressed: onPressed,
        child: ListTile(
          visualDensity:
              const VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(image),
          title: Text(
            title,
            style: TextStyles.semiBold16,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
