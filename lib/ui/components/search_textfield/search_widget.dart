import 'package:flutter/material.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        width: double.infinity,
        height: height * 0.06,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: greyTheme)),
        child: TextField(
          decoration: InputDecoration(
              prefixIcon: InkWell(
                onTap: () {},
                child: const Icon(Icons.search, color: greyTheme),
              ),
              contentPadding: const EdgeInsets.only(
                top: 14,
              ),
              border: InputBorder.none,
              hintText: 'Search...'),
        ),
      ),
    );
  }
}
