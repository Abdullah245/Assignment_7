import 'package:flutter/cupertino.dart';

import '../Constants/color_constants.dart';

rewardfunc3(context) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8),
    child: Container(
      height: MediaQuery.of(context).size.height * .12,
      width: MediaQuery.of(context).size.width * .25,
      decoration: BoxDecoration(
          color: Color(ColorConstant.color19),
          borderRadius: BorderRadius.circular(15)),
    ),
  );
}
