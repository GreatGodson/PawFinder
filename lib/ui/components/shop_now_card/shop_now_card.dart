import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paw_finder/ui/themes/text_style/text_style.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class ShopNowCard extends StatelessWidget {
  const ShopNowCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // size.height / 5
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: greyTheme,
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                      text: 'Undercover React \nPresto 2022.',
                      color: blackTheme,
                      fontSize: 20),
                  const Spacer(),
                  const CustomText(
                      text: 'Jun Tekahashi\'s vision of \nchaos and balance...',
                      color: blackTheme,
                      fontSize: 12.0),
                  const Spacer(),
                  // size.height / 25
                  // size.width / 4.5
                  Container(
                    height: 30.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                        color: brightPinkTheme,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {},
                      child: const CustomText(
                          text: 'Shop Now', color: whiteTheme, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset('images/dog.png'),
        ],
      ),
    );
  }
}
