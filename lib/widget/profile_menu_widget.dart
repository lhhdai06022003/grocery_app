import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant/constant.dart';


class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key, required this.icon, required this.title, required this.iconRight,
  });

  final IconData icon;
  final String title;
  final IconData iconRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: kTitleColor,
            ),
            SizedBox(width: 15,),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: kTitleColor,
                  fontSize: 18,
                  letterSpacing: 0.09
              ),
            ),
          ],
        ),
        Icon(
          iconRight,
          size: 20,
          color: kTitleColor,
        ),
      ],
    );
  }
}