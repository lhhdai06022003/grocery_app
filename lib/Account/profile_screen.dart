import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant/constant.dart';
import '../widget/profile_menu_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
      });
      print('Switch Button is OFF');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(height: 30,),
              Icon(
                FontAwesomeIcons.chevronLeft,
                size: 25,
                color: kPrimaryColor,
              ),
              Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor,
                      letterSpacing: -0.16),
                ),
              ),
              SizedBox(height: 30,),
              ProfileMenuWidget(icon: FontAwesomeIcons.solidUser, title: 'Profile', iconRight: FontAwesomeIcons.chevronRight,),
              SizedBox(height: 35,),
              ProfileMenuWidget(icon: FontAwesomeIcons.key, title: 'Change Password', iconRight: FontAwesomeIcons.chevronRight,),
              SizedBox(height: 35,),
              ProfileMenuWidget(icon: FontAwesomeIcons.creditCard, title: 'My Cards', iconRight: FontAwesomeIcons.chevronRight,),
              SizedBox(height: 35,),
              Text(
                "App Settings",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.3
                ),
              ),
            SizedBox(height: 35,),
            // notification
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                Row(
                  children: const [
                    Icon(
                      FontAwesomeIcons.solidBell,
                      size: 20,
                      color: kTitleColor,
                    ),
                    SizedBox(width: 15,),
                    Text(
                      "Notification",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: kTitleColor,
                          fontSize: 18,
                          letterSpacing: 0.09
                      ),
                    ),
                  ],
                ),
                Transform.scale(
                    scale: 1.5,
                    child: Switch(
                      onChanged: toggleSwitch,
                      value: isSwitched,
                      activeColor: Colors.white,
                      activeTrackColor:kPrimaryColor,
                      inactiveThumbColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                    )
                ),

              ],
            ),
              SizedBox(height: 35,),
              //language
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.language,
                        size: 20,
                        color: kTitleColor,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        "Language",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: kTitleColor,
                            fontSize: 18,
                            letterSpacing: 0.09
                        ),
                      ),
                    ],
                  ),
                 Row(
                   children: [
                     Text(
                       "English",
                       style: TextStyle(
                         color: kTitleColor,
                         fontWeight: FontWeight.w400,
                         fontSize: 16,
                         letterSpacing: -0.3
                       ),
                     ),
                     Icon(
                       FontAwesomeIcons.chevronRight,
                       size: 20,
                       color: kTitleColor,
                     ),
                   ],
                 ),
                ],
              ),

              SizedBox(height: 35,),
              //logout
              Row(
                children:   const [
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.rightFromBracket,
                        size: 20,
                        color: kTitleColor,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        "Logout",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: kTitleColor,
                            fontSize: 18,
                            letterSpacing: 0.09
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}


