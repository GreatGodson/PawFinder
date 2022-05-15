import 'package:flutter/material.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 330,
      decoration: const BoxDecoration(
        color: whiteTheme,
      ),
      child: TabBar(
        labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        unselectedLabelStyle: const TextStyle(fontSize: 10, color: blackTheme),
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
