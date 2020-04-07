import 'package:flutter/material.dart';
import 'package:themeds/utils/constants.dart';

class PillsInfoColumn extends StatelessWidget {
  const PillsInfoColumn(
      {this.value1, this.explanation1, this.value2, this.explanation2});
  final String explanation1;
  final String value1;
  final String explanation2;
  final String value2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          explanation1,
          style: kGreyTypeText,
        ),
        Text(
          value1,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        kSizedBox,
        kSizedBox,
        Text(
          explanation2,
          style: kGreyTypeText,
        ),
        Text(
          value2,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
