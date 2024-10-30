import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_images.dart';
import 'package:fruit_hub/core/utils/app_text_style.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
            isVisible: true,
            image: Assets.imagesPageviewitem1Image,
            backgroundImage: Assets.imagesPageviewitem1Backgroundimage,
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(' مرحبًا بك في', style: TextStyles.bold23),
              Text(' HUB',
                  style: TextStyles.bold23
                      .copyWith(color: AppColors.secondaryColor)),
              Text('Fruit',
                  style: TextStyles.bold23
                      .copyWith(color: AppColors.primaryColor)),
            ])),
        const PageViewItem(
            isVisible: false,
            image: Assets.imagesPageviewitem2Image,
            backgroundImage: Assets.imagesPageviewitem2Backgroundimage,
            subtitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            title: Text(
              'ابحث وتسوق',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xff0c0d0d),
                  fontSize: 23,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.w700,
                  height: 0),
            )),
      ],
    );
  }
}
