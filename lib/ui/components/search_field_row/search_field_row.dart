import 'package:flutter/material.dart';
import 'package:paw_finder/ui/components/reusable_container/reusable_container.dart';
import 'package:paw_finder/ui/components/search_textfield/search_widget.dart';
import 'package:paw_finder/ui/themes/theme.dart';

class SearchFieldRow extends StatelessWidget {
  const SearchFieldRow({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: SearchTextField(
            height: size.height,
            width: size.width,
          ),
        ),
        ReusableContainer(
          borderRadius: 10,
          borderColor: false,
          color: brightPinkTheme,
          height: size.height / 17,
          width: size.width / 7,
          child: const Icon(
            Icons.settings_input_composite_sharp,
            size: 18,
            color: whiteTheme,
          ),
        ),
      ],
    );
  }
}
