import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/reusable_container/reusable_container.dart';
import 'package:paw_finder/ui/themes/text_style/text_style.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class PawInfoRow extends StatelessWidget {
  const PawInfoRow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CustomText(text: 'Maxim', color: blackTheme, fontSize: 18),
        ReusableContainer(
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
    );
  }
}
