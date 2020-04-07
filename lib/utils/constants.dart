import 'package:flutter/material.dart';

const kGreyTypeText = TextStyle(
  color: Color(0xFFBEBEBE),
  fontSize: 15.0,
);

const kSizedBox = SizedBox(
  height: 10.0,
);

const kItemBoxText = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);

const kSearchFieldDecoration = InputDecoration(
  prefixIcon: Icon(
    Icons.search,
    color: Color(0xFFB7B5B5),
  ),
  hintText: 'Search for medicine',
  hintStyle: TextStyle(color: Color(0xFFB7B5B5)),
  filled: true,
  fillColor: Color(0xFFEAE8E8),
  border: OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
  ),
);
