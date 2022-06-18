import 'package:assingment_6/Functions/home_page_appbar.dart';

import 'package:assingment_6/Pages/recive.dart';
import 'package:assingment_6/Widgets/home_container.dart';
import 'package:flutter/material.dart';
import '../Constants/color_constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ColorConstant.color),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            appBarFunc1(context),
            HomeContainer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => RecMoney()),
            ),
          );
        },
        extendedPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
        label: Text(
          "Recieve Money",
        ),
        backgroundColor: Color(0xff08348A),
      ),
    );
  }
}
