import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/text_style/text_style.dart';
import 'package:paw_finder/ui/screens/category_info.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class SeeAllRow extends StatelessWidget {
  const SeeAllRow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: size.height / 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CustomText(text: 'Adopt Dog', color: blackTheme, fontSize: 18),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AllCategory()));
            },
            child: const CustomText(
                text: 'See all', color: darkGreyTheme, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
