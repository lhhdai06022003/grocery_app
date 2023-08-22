import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/constant/constant.dart';
import 'package:grocery_app/model/history_model.dart';

import '../../widget/history_widget.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  bool isSelect = false;

  void select() {
    if (isSelect == false) {
      setState(() {
        isSelect = true;
      });
    } else {
      setState(() {
        isSelect = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Icon(
                FontAwesomeIcons.chevronLeft,
                size: 20,
                color: kPrimaryColor,
              ),
              Center(
                child: Text(
                  "Orders",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.165),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // order
                  InkWell(
                    onTap: () {
                      setState(() {
                        select();
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          "Ongoing",
                          style: TextStyle(
                              color: isSelect == false
                                  ? Color(0xffFF5E00)
                                  : kTitleColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              letterSpacing: 0.1),
                        ),
                        SizedBox(
                          height: 2,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelect == true
                                  ? Colors.white
                                  : kPrimaryColor,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  // history
                  InkWell(
                    onTap: () {
                      setState(() {
                        select();
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          "History",
                          style: TextStyle(
                              color: isSelect == true
                                  ? Color(0xffFF5E00)
                                  : kTitleColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              letterSpacing: 0.1),
                        ),
                        SizedBox(
                          height: 2,
                          width: 100,
                          child: Container(
                            decoration: BoxDecoration(
                              color: isSelect == false
                                  ? Colors.white
                                  : kPrimaryColor,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //body Orders
              isSelect == true
                  ? ListView.builder(
                      itemCount: listHistory.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return HistoryWidget(
                            list: listHistory[index], onTap: () {});
                      },
                    )
                  : Padding(
                      padding: EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.calendar,
                                    size: 20,
                                    color: kTitleColor,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "March 5, 2019",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        letterSpacing: 1.28,
                                        color: kTitleColor),
                                  )
                                ],
                              ),
                              Text(
                                "6:30 pm",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: kPrimaryColor,
                                    letterSpacing: 0.978),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(50.0)),
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(
                                      FontAwesomeIcons.check,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 130,
                                    width: 1,
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 5,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: 1,
                                          height: 10,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Color(0xffC6C6C6))),
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(50.0)),
                                    padding: EdgeInsets.all(5.0),
                                    child: Icon(
                                      FontAwesomeIcons.check,
                                      size: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 120,
                                    width: 1,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          width: 1,
                                          height: 10,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Color(0xffC6C6C6))),
                                        );
                                      },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50.0),
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          color: Colors.black,
                                          width: 1),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  //group 1
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/Group1.png"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "We are packin your items...",
                                        style: TextStyle(
                                            color: kTitleColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 0.978),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  // group 2
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/Group2.png"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Your order is location...",
                                        style: TextStyle(
                                          color: kTitleColor,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          letterSpacing: 0.978,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  // group3
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset("assets/images/Group3.png"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Your order is received.",
                                        style: TextStyle(
                                            color: kTitleColor,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            letterSpacing: 0.978),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
