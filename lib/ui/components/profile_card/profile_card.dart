import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/Profile/profile_owner.dart';
import 'package:paw_finder/ui/screens/category_info.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AllCategory()));
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
    );
  }
}
