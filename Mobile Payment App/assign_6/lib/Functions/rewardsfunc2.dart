import 'package:flutter/material.dart';

import '../Constants/color_constants.dart';
import '../Constants/text_constants.dart';

rewardContButton() {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        primary: Colors.white),
    onPressed: () {},
    child: Text(
      TextConstant.collectNow,
      style: TextStyle(
        color: Color(ColorConstant.color21),
      ),
    ),
  );
}
