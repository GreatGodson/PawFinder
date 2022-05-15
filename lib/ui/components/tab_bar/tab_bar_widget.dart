import 'package:flutter/material.dart';
import 'package:paw_finder/ui/themes/theme.dart';
import 'package:paw_finder/ui/constants.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 20,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: whiteTheme,
      ),
      child: TabBar(
        labelStyle: KTabBarLabelTextStyle,
        unselectedLabelStyle: KTabBarUnselectedLabelTextStyle,
        unselectedLabelColor: blackTheme,
        indicatorColor: whiteTheme,
        labelColor: whiteTheme,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: brightPinkTheme,
        ),
        tabs: const [
          Text('All'),
          Text('Rottweiler'),
          Text('Doberman'),
          Text('Cane Corso'),
        ],
      ),
    );
  }
}
