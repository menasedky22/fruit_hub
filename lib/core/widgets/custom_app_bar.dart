import 'package:flutter/material.dart';

import '../utils/app_text_style.dart';

AppBar buildAppBar(context, {required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new)),
    centerTitle: true,
    title: Text(
      textAlign: TextAlign.center,
      title,
      style: TextStyles.bold19,
    ),
  );
}
