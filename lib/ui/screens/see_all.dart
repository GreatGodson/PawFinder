import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/search_button/search_button.dart';
import 'package:paw_finder/ui/components/text_style/text_style.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class AllCategory extends StatelessWidget {
  const AllCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    width: double.infinity,
                    height: size.height / 2.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: greyTheme,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          'images/paw4.png',
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomText(
                        text: 'Maxim', color: blackTheme, fontSize: 18),
                    SearchButton(
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
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height / 40, bottom: size.height / 40),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: whiteTheme,
                        radius: 30,
                        child: Image.asset('images/lady2.png'),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 10, right: size.width / 2.5),
                        child: Column(
                          children: const [
                            CustomText(
                                text: 'Annabel',
                                color: blackTheme,
                                fontSize: 18),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: CustomText(
                                  text: 'Amber owner',
                                  color: blackTheme,
                                  fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(child: Icon(Icons.menu)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: const [
                      CustomText(
                          text: 'About', color: blackTheme, fontSize: 16),
                    ],
                  ),
                ),
                const CustomText(
                    text:
                        'Maxim is a German maltese breed, Maxim is 5 years old and likes to play. Maxim craves so much attention and is such a loveable breed',
                    color: darkGreyTheme,
                    fontSize: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: Row(
                    children: [
                      Row(
                        children: const [
                          CustomText(
                              text: 'Age:',
                              color: brightPinkTheme,
                              fontSize: 15),
                          CustomText(
                              text: '5 Years', color: blackTheme, fontSize: 15),
                        ],
                      ),
                      SizedBox(
                        width: size.width / 3,
                      ),
                      Row(
                        children: const [
                          CustomText(
                              text: 'Sex:',
                              color: brightPinkTheme,
                              fontSize: 15),
                          CustomText(
                              text: 'Male', color: blackTheme, fontSize: 15),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Row(
                        children: const [
                          CustomText(
                              text: 'Find:',
                              color: brightPinkTheme,
                              fontSize: 15),
                          CustomText(
                              text: 'Friends, Girlfreinds',
                              color: blackTheme,
                              fontSize: 15),
                        ],
                      ),
                      SizedBox(
                        width: size.width / 8.4,
                      ),
                      Expanded(
                        child: Row(
                          children: const [
                            CustomText(
                                text: 'race:',
                                color: brightPinkTheme,
                                fontSize: 15),
                            CustomText(
                                text: 'Maltese',
                                color: blackTheme,
                                fontSize: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: brightPinkTheme,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                    onPressed: () {},
                    child: CustomText(
                      text: 'Contact Us',
                      color: whiteTheme,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
