import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/Profile/profile_owner.dart';
import 'package:paw_finder/ui/components/search_button/search_button.dart';
import 'package:paw_finder/ui/components/see_all_row/see_all_row.dart';
import 'package:paw_finder/ui/components/text_style/text_style.dart';
import 'package:paw_finder/ui/screens/category_info.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          children: [
            SeeAllRow(size: size),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AllCategory()));
              },
              child: Container(
                height: size.height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: greyTheme,
                ),
                child: Row(
                  children: [
                    ProfileInformation(size: size),
                    Padding(
                      padding: EdgeInsets.only(top: size.height / 5.2),
                      child: Image.asset(
                        'images/paw4.png',
                        width: size.width / 2.5,
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
