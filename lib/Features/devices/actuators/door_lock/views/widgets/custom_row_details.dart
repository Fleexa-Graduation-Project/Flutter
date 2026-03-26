import 'package:fleexa/core/utils/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomRowDetails extends StatelessWidget {
  const CustomRowDetails({
    super.key,
    required this.title,
    required this.value,
    required this.valueColor,
  });

  final String title;
  final String value;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "• $title",
            style: Styles.style14Medium.copyWith(color: Colors.grey),
          ),
          Text(
            value,
            style: Styles.style14Medium.copyWith(color: valueColor),
          ),
        ],
      ),
    );
  }
}
