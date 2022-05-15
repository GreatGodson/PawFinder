import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:paw_finder/ui/components/app_bar_widget/app_bar.dart';
import 'package:paw_finder/ui/components/search_field_row/search_field_row.dart';
import 'package:paw_finder/ui/components/shop_now_card/shop_now_card.dart';
import 'package:paw_finder/ui/components/tab_bar/tab_bar_widget.dart';
import 'package:paw_finder/ui/screens/all_cat_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                SearchFieldRow(size: size),
                ShopNowCard(size: size),
                const TabBarWidget(),
                SizedBox(
                  height: size.height / 3,
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
