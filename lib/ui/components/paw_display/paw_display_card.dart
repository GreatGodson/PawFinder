import 'package:flutter/material.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class PawDisplayCard extends StatelessWidget {
  const PawDisplayCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
