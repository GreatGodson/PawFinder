import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/Button/contact_us.dart';
import 'package:paw_finder/ui/components/Profile/paw_owner.dart';
import 'package:paw_finder/ui/components/paw_display/paw_display_card.dart';
import 'package:paw_finder/ui/components/paw_display/paw_info_row.dart';
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
                PawDisplayCard(size: size),
                PawInfoRow(size: size),
                Row(
                  children: const [
                    CustomText(
                        text: 'Maltese, 5 years',
                        color: darkGreyTheme,
                        fontSize: 12),
                  ],
                ),
                PawOwnerInfo(size: size),
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
                const ContactUsButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
