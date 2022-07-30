import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../consts/fonts.dart';

class CustomAutocompletedTextField extends StatelessWidget {
  final TextEditingController controller;
  final List<Map<String, dynamic>> items;
  final String? hintText;
  final String? title;
  final int? maxItemsShow;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool enabled;
  final String? errorText;
  final bool isRequired;
  final void Function(Map<String, dynamic>) onSuggestionSelected;

  const CustomAutocompletedTextField({
    required this.controller,
    required this.items,
    required this.onSuggestionSelected,
    this.title,
    this.hintText,
    this.textInputAction,
    this.keyboardType,
    this.enabled = true,
    this.errorText,
    this.maxItemsShow,
    this.isRequired = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null)
          Row(children: <Widget>[
            Text(
              title!,
              style: const TextStyle(
                fontFamily: fontNunito,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (isRequired)
              const Text(
                "*",
                style: TextStyle(
                  fontFamily: fontNunito,
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                ),
              ),
          ]),
        if (title != null) SizedBox(height: size.height * 0.01),
        TypeAheadField(
          textFieldConfiguration: TextFieldConfiguration(
            textInputAction: textInputAction,
            enabled: enabled,
            keyboardType: keyboardType ?? TextInputType.text,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontFamily: fontNunito, fontWeight: FontWeight.w500),
              errorText: errorText == "" ? null : errorText,
              errorStyle: TextStyle(
                color: Theme.of(context).errorColor,
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide:
                    BorderSide(color: Theme.of(context).secondaryHeaderColor),
              ),
              filled: true,
              fillColor: enabled
                  ? Theme.of(context).inputDecorationTheme.fillColor
                  : const Color.fromARGB(255, 207, 209, 214),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide:
                    BorderSide(color: Theme.of(context).secondaryHeaderColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(14),
                borderSide: BorderSide(
                  color: Theme.of(context).primaryColor.withAlpha(0),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  width: 58,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          controller.text = "";
                        },
                        child: Icon(Icons.close,
                            color: Theme.of(context).hintColor),
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset(
                        "assets/icons/down-chevron.svg",
                        color: Theme.of(context).hintColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            controller: controller,
          ),
          getImmediateSuggestions: false,
          onSuggestionSelected: onSuggestionSelected,
          suggestionsCallback: (pattern) {
            var data = items.where((element) =>
                element["label"].toLowerCase().contains(pattern.toLowerCase()));
            if (maxItemsShow != null) {
              return data.take(maxItemsShow!);
            }
            return data;
          },
          itemBuilder: (_, Map<String, dynamic> suggestion) => InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Text(suggestion["label"]),
            ),
          ),
          noItemsFoundBuilder: (context) => const Padding(
            padding: EdgeInsets.all(20),
            child: Text("Item tidak ditemukan"),
          ),
          suggestionsBoxDecoration:
              SuggestionsBoxDecoration(borderRadius: BorderRadius.circular(10)),
        ),
      ],
    );
  }
}
