import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/model/history_model.dart';

import '../constant/constant.dart';

class HistoryWidget extends StatelessWidget {
  const HistoryWidget({
    super.key, required this.list, required this.onTap,
  });
 final History list;
 final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Icon(
                  FontAwesomeIcons.bagShopping,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    list.title,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.6,
                        color: kTitleColor
                    ),
                  ),
                  SizedBox(height: 5,),
                  list.isExpect == true ?
                  Text(
                    "Delivered",
                    style: TextStyle(
                      color: Color(0xff5EC401),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  )
                  :
                  Text(
                    "Cancelled",
                    style: TextStyle(
                      color: Color(0xffF2110D),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ) ,
                  SizedBox(height: 5,),
                  Text(
                    list.date,
                    style: TextStyle(
                      color: kTitleColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),


                ],
              ),
            ],
          ),
          Text(
            "\$${list.price}",
            style: TextStyle(
                color: kPrimaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w700
            ),
          )
        ],
      ),
    );
  }
}