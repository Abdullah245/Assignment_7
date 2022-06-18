import 'package:flutter/material.dart';

specialButton(context, text, func, Color clr1,[ Color clr2 = const Color(0xFF01BC63), w = 0.25, h = 0.1]) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * w,
    height: MediaQuery.of(context).size.height * h,
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: clr1,
        ),
        onPressed: func,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
            color: clr2,
          ),
        )),
  );
}
