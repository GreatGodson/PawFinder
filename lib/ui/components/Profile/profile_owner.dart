import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/search_button/search_button.dart';
import 'package:paw_finder/ui/components/text_style/text_style.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: whiteTheme,
                  radius: 40,
                  child: Image.asset('images/lady2.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SearchButton(
                    borderRadius: 10,
                    borderColor: false,
                    color: brightPinkTheme,
                    height: size.height / 35,
                    width: size.width / 8,
                    child: const Text(
                      '9 km',
                      style: TextStyle(color: whiteTheme),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: const [
                CustomText(text: 'Maxim', color: blackTheme, fontSize: 18),
              ],
            ),
            Row(
              children: const [
                CustomText(
                    text: 'Maltese, 5 years',
                    color: darkGreyTheme,
                    fontSize: 12),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
