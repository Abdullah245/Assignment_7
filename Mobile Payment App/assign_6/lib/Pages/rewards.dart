import 'package:assingment_6/Functions/rewardfunc3.dart';
import 'package:flutter/material.dart';

import '../Constants/color_constants.dart';
import '../Constants/image_constants.dart';
import '../Constants/text_constants.dart';
import '../Functions/home_page_appbar.dart';
import '../Functions/rewards_func1.dart';

class Rewards extends StatelessWidget {
  const Rewards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: Column(
        children: [
          SafeArea(
            child: appBarFunc1(context),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * .3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(ColorConstant.color),
              ),
              child: Column(children: [
                //text1
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    TextConstant.cashbackEarned,
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    TextConstant.cash5000,
                    style: TextStyle(
                        color: Color(ColorConstant.grey3), fontSize: 35),
                  ),
                ),

                Text(
                  TextConstant.plusMoney,
                  style: TextStyle(
                      color: Color(ColorConstant.grey3), fontSize: 20),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      TextConstant.cbhistory,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(ColorConstant.grey2),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 8.0),
                child: Text(
                  TextConstant.wonscratchCards,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Row(
                children: [
                  rewardfunc3(context),
                  rewardfunc3(context),
                  rewardfunc3(context)
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 8.0, top: 5),
                child: Text(
                  TextConstant.collectRewards,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              rewardcont(
                  context,
                  ColorConstant.color21,
                  ImageConstant.rewardbg1,
                  ImageConstant.rewardimg1,
                  TextConstant.percentFood,
                  TextConstant.kfcOrder)
            ],
          )
        ],
      ),
    );
  }
}
