import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/services/shared_preferences_singletone.dart';
import 'package:fruit_hub/features/auth/presenrarion/views/login_view.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_text_style.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backgroundImage,
      required this.subtitle,
      required this.title,
      required this.isVisible});

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backgroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: isVisible,
                child: GestureDetector(
                  onTap: () {
                    SharedPreferenceSingletone.seBool(
                        kIsOnBoardingViewSeen, true);
                    Navigator.of(context)
                        .pushReplacementNamed(LoginView.routeName);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'تخط',
                      style: TextStyles.regular13
                          .copyWith(color: const Color(0xff949d9e)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style:
                TextStyles.semiBold13.copyWith(color: const Color(0xff4e5456)),
          ),
        ),
      ],
    );
  }
}
