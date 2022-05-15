import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/text_style/text_style.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class PawOwnerInfo extends StatelessWidget {
  const PawOwnerInfo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: size.height / 40, bottom: size.height / 40),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: whiteTheme,
            radius: 30,
            child: Image.asset('images/lady2.png'),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: size.width / 2.5),
            child: Column(
              children: const [
                CustomText(text: 'Annabel', color: blackTheme, fontSize: 18),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: CustomText(
                      text: 'Amber owner', color: blackTheme, fontSize: 12),
                ),
              ],
            ),
          ),
          const Expanded(child: Icon(Icons.menu)),
        ],
      ),
    );
  }
}
