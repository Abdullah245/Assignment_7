import 'package:flutter/material.dart';
import '../Constants/color_constants.dart';
import '../Constants/text_constants.dart';
import 'home.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(24, 26, 32, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 30, 12, 0),
          child: Container(
            height: MediaQuery.of(context).size.height * .7,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
              color: Color(ColorConstant.color),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TextConstant.notifications,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Home()),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.cancel_outlined,
                            color: Colors.white,
                            size: 25,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        TextConstant.rechargeComp,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              TextConstant.rechargeCompSentence,
                              style: TextStyle(
                                  color: Color(ColorConstant.color27),
                                  fontSize: 11),
                            ),
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(ColorConstant.grey2),
                                  child: Icon(
                                    Icons.notifications_outlined,
                                    color: Color(ColorConstant.color28),
                                    size: 25,
                                  ),
                                ),
                                Positioned(
                                  child: CircleAvatar(
                                    radius: 5,
                                  ),
                                  top: 7,
                                  right: 8,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Text(
                        TextConstant.rechargeCompDate,
                        style: TextStyle(
                            color: Color(ColorConstant.color27), fontSize: 12),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        TextConstant.moneyRec,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              TextConstant.moneyRecSentence,
                              style: TextStyle(
                                  color: Color(ColorConstant.color27),
                                  fontSize: 11),
                            ),
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(ColorConstant.grey2),
                                  child: Icon(
                                    Icons.notifications_outlined,
                                    color: Color(ColorConstant.color28),
                                    size: 25,
                                  ),
                                ),
                                Positioned(
                                  child: CircleAvatar(
                                    radius: 5,
                                  ),
                                  top: 7,
                                  right: 8,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Text(
                        TextConstant.moneyRecDate,
                        style: TextStyle(
                            color: Color(ColorConstant.color27), fontSize: 12),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        TextConstant.offerUnlocked,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              TextConstant.offerUnlockedSentence,
                              style: TextStyle(
                                  color: Color(ColorConstant.color27),
                                  fontSize: 11),
                            ),
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Color(ColorConstant.grey2),
                                  child: Icon(
                                    Icons.notifications_outlined,
                                    color: Color(ColorConstant.color27),
                                    size: 25,
                                  ),
                                ),
                                Positioned(
                                  child: CircleAvatar(
                                    radius: 5,
                                  ),
                                  top: 7,
                                  right: 8,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Text(
                        TextConstant.offerUnlockedDate,
                        style: TextStyle(
                            color: Color(ColorConstant.color27), fontSize: 11),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TextConstant.recentNotifications,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
