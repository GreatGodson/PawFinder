import 'package:flutter/material.dart';
import 'package:paw_finder/ui/themes/text_style/text_style.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.0,
      leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.segment,
            color: blackTheme,
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bubble_chart_outlined,
              color: blackTheme,
            )),
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.location_on_outlined,
                color: brightPinkTheme,
              )),
          const CustomText(
            text: 'New York',
            color: blackTheme,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: brightPinkTheme,
              )),
        ],
      ),
    );
  }
}
