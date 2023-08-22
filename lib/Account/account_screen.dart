import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/Account/orders/orders_screen.dart';
import 'package:grocery_app/Account/profile_screen.dart';

import '../constant/constant.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Icon(
              FontAwesomeIcons.chevronLeft,
              size: 25,
              color: kPrimaryColor,
            ),
            Center(
              child: Text(
                "Account",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: kPrimaryColor,
                    letterSpacing: -0.16),
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => ProfileScreen()));
              },
              child: Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.solidUser,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                  SizedBox(width: 15,),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kTitleColor,
                      fontSize: 18,
                      letterSpacing: 0.09
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => OrdersScreen()));
              },
              child: Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.basketShopping,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                  SizedBox(width: 15,),
                  Text(
                    "Orders",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: kTitleColor,
                        fontSize: 18,
                        letterSpacing: 0.09
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              children: const [
                Icon(
                  FontAwesomeIcons.mapLocation,
                  size: 20,
                  color: kPrimaryColor,
                ),
                SizedBox(width: 15,),
                Text(
                  "Address",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kTitleColor,
                      fontSize: 18,
                      letterSpacing: 0.09
                  ),
                )
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: const [
                Icon(
                  FontAwesomeIcons.creditCard,
                  size: 20,
                  color: kPrimaryColor,
                ),
                SizedBox(width: 15,),
                Text(
                  "Payment",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kTitleColor,
                      fontSize: 18,
                      letterSpacing: 0.09
                  ),
                )
              ],
            ),

          ],
        )
      ),
    );
  }
}
