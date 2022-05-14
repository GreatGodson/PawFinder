import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paw_finder/ui/components/app_bar_widget/app_bar.dart';
import 'package:paw_finder/ui/components/search_button/search_button.dart';
import 'package:paw_finder/ui/components/search_textfield/search_widget.dart';
import 'package:paw_finder/ui/components/text_style/text_style.dart';
import 'package:paw_finder/ui/screens/see_all.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(80), child: AppBarWidget()),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: SearchTextField(
                        height: height,
                        width: width,
                      ),
                    ),
                    SearchButton(
                      borderRadius: 10,
                      borderColor: false,
                      color: brightPinkTheme,
                      height: height / 17,
                      width: width / 7,
                      child: const Icon(
                        Icons.settings_input_composite_sharp,
                        size: 18,
                        color: whiteTheme,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: height / 5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: greyTheme,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10, left: 20, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const CustomText(
                                  text: 'Undercover React \nPresto 2022.',
                                  color: blackTheme,
                                  fontSize: 20),
                              const Spacer(),
                              const CustomText(
                                  text:
                                      'Jun Tekahashi\'s vision of \nchaos and balance...',
                                  color: blackTheme,
                                  fontSize: 12.0),
                              const Spacer(),
                              Container(
                                height: height / 25,
                                width: width / 4.5,
                                decoration: BoxDecoration(
                                    color: brightPinkTheme,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const CustomText(
                                      text: 'Shop Now',
                                      color: whiteTheme,
                                      fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Image.asset('images/dog.png'),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                    color: whiteTheme,
                  ),
                  child: TabBar(
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    unselectedLabelStyle:
                        TextStyle(fontSize: 10, color: blackTheme),
                    unselectedLabelColor: blackTheme,
                    indicatorColor: whiteTheme,
                    labelColor: whiteTheme,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: brightPinkTheme,
                    ),
                    tabs: [
                      Text('All'),
                      Text('Rottweiler'),
                      Text('Doberman'),
                      Text('Cane Corso'),
                    ],
                  ),
                ),
                SizedBox(
                  height: height / 3,
                  child: const TabBarView(children: [
                    All(),
                    All(),
                    All(),
                    All(),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: height / 70),
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
                height: height / 3,
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
                                    height: height / 35,
                                    width: width / 8,
                                    child: const Text(
                                      '9 km',
                                      style: TextStyle(color: whiteTheme),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CustomText(
                                    text: 'Maxim',
                                    color: blackTheme,
                                    fontSize: 18),
                              ],
                            ),
                            Row(
                              children: [
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
                      padding: EdgeInsets.only(top: height / 5.2),
                      child: Image.asset(
                        'images/paw4.png',
                        width: width / 2.5,
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
