import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/profile_card/profile_card.dart';
import 'package:paw_finder/ui/components/see_all_row/see_all_row.dart';

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
            ProfileCard(size: size),
          ],
        ),
      ],
    );
  }
}
