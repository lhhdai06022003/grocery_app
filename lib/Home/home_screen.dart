import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/Home/detail_screen.dart';
import 'package:grocery_app/constant/constant.dart';
import 'package:grocery_app/model/category_model.dart';

import '../model/category_model.dart';
import '../model/category_model.dart';
import '../model/products_model.dart';
import '../widget/category_widget.dart';
import '../widget/popular_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Categoried? categoried;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.locationDot,
                    size: 20,
                    color: kPrimaryColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Lungangen",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: kPrimaryColor),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // search
            Container(
              height: 50,
              color: Color(0xffF3F3F3),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: TextField(
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 16,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: kSecondaryColor,
                    ),
                    prefixIcon: Icon(
                      FontAwesomeIcons.search,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: kTitleColor,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // categori
            Container(
              height: 160,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: 4,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CategoryWidget(
                      categoried: listCategoried[index], onTap: () {});
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // popular
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Deals",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: kTitleColor,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 10.0),
              height: 235,
              child: ListView.builder(
                padding: EdgeInsets.all(10.0),
                itemCount: listProduct.length,
                physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return PopularWidget(
                      product: listProduct[index],
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(product: listProduct[index])));
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
