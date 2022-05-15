import 'package:flutter/material.dart';
import 'package:paw_finder/ui/themes/text_style/text_style.dart';

import 'package:paw_finder/ui/themes/theme.dart';

class ContactUsButton extends StatelessWidget {
  const ContactUsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: brightPinkTheme, borderRadius: BorderRadius.circular(10)),
      child: TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const CustomText(
          text: 'Contact Us',
          color: whiteTheme,
          fontSize: 16,
        ),
      ),
    );
  }
}
