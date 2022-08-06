import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../consts/fonts.dart';

class CustomCheckboxInput extends StatelessWidget {
  final String? label;
  final String title;
  final String subTitle;
  final bool leftToRight;
  final bool isRequired;

  const CustomCheckboxInput({
    this.label,
    required this.title,
    required this.subTitle,
    this.leftToRight = true,
    this.isRequired = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            if (label != null)
              Text(
                label!,
                style: const TextStyle(
                  fontFamily: fontNunito,
                  fontWeight: FontWeight.w600,
                ),
              ),
            if (isRequired)
              const Text(
                "*",
                style: TextStyle(
                  fontFamily: fontNunito,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
          ],
        ),
        CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            subtitle: Text(
              subTitle,
              style: const TextStyle(color: Colors.red, fontSize: 12),
            ),
            title: Text(
              title,
              style: const TextStyle(
                fontFamily: fontNunito,
              ),
            ),
            value: true,
            activeColor: cardDarkGreen,
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
            ),
            onChanged: (value) => value),
      ],
    );
  }
}
