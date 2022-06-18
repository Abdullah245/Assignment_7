import 'package:flutter/material.dart';

equalButton(context, text, func,
    [w = 0.19, h = 0.2, Color clr1 = const Color(0xff01BC63)]) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * w,
    height: MediaQuery.of(context).size.height * h,
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(clr1),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
      onPressed: func,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    ),
  );
}
