import 'package:flutter/material.dart';

import '../../consts/colors.dart';
import '../../consts/fonts.dart';

class CustomRadioInput extends StatelessWidget {
  final List<Widget> option;
  final bool isVertical;
  final String title;
  final bool isRequired;

  /// default direction is horizontal, if you want to set isVertial to true,
  /// you must remove flexible widget to the listTile
  /// otherwise, wrap the widget with flexible widget
  const CustomRadioInput({
    this.isVertical = false,
    this.isRequired = false,
    required this.title,
    required this.option,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: fontNunito,
                fontWeight: FontWeight.w600,
              ),
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
        ]),
        isVertical
            ? Column(
                children: option,
              )
            : Row(
                children: option,
              ),
      ],
    );
  }
}
