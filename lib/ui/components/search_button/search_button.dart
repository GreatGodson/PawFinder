import 'package:flutter/material.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    Key? key,
    required this.height,
    required this.width,
    required this.child,
    required this.color,
    required this.borderColor,
    required this.borderRadius,
  }) : super(key: key);

  final double height;
  final double width;
  final Widget child;
  final Color color;
  final double borderRadius;
  final bool borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(color: borderColor ? darkGreyTheme : whiteTheme),
          color: color,
        ),
        child: Center(child: child),
      ),
    );
  }
}
