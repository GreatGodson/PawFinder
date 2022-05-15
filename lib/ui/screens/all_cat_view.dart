import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/search_button/search_button.dart';
import 'package:paw_finder/ui/components/text_style/text_style.dart';
import 'package:paw_finder/ui/screens/category_info.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: size.height / 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                      text: 'Adopt Dog', color: blackTheme, fontSize: 18),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AllCategory()));
                    },
                    child: const CustomText(
                        text: 'See all', color: darkGreyTheme, fontSize: 12),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AllCategory()));
              },
              child: Container(
                height: size.height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: greyTheme,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, bottom: 20, top: 20),
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
                                CustomText(
                                    text: 'Maxim',
                                    color: blackTheme,
                                    fontSize: 18),
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: size.height / 5.2),
                      child: Image.asset(
                        'images/paw4.png',
                        width: size.width / 2.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
