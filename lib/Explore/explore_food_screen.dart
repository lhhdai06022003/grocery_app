import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/constant/constant.dart';
import 'package:grocery_app/model/category_model.dart';
import 'package:grocery_app/model/products_model.dart';
import 'package:grocery_app/widget/popular_widget.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class ExploreFoodScreen extends StatefulWidget {
  const ExploreFoodScreen({super.key});

  @override
  State<ExploreFoodScreen> createState() => _ExploreFoodScreenState();
}

class _ExploreFoodScreenState extends State<ExploreFoodScreen> {
  int idCategory = 0;
  String title = "Fruit";

  List list = listProduct;

  void changeCategory() {
    switch (idCategory) {
      case 1:
        list = listProduct;
        title = "Fruit";
      case 2:
        list = listVegtables;
        title = "Vegtables";
      case 3:
        list = listMeat;
        title = "Meat";
      case 4:
        list = listFish;
        title = "Fish";
      case 5:
        list = listSeaFood;
        title = "SeaFood";
    }
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    changeCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.chevronLeft,
                      size: 25,
                      color: kPrimaryColor,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: kPrimaryColor),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
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
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 10.0),
                  itemCount: listCategoried.length,
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return TabWidget(
                      categoried: listCategoried[index],
                      onTap: () {
                        setState(() {
                          idCategory = listCategoried[index].id;
                        });
                      },
                      color: Colors.white,
                    );
                  },
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 3.0,
                  mainAxisSpacing: 7.0,
                ),
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return PopularWidget(
                      product: list[index],
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(
                        //         builder: (context) => ExploreFoodScreen()));
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabWidget extends StatelessWidget {
  const TabWidget({
    super.key,
    required this.color,
    required this.categoried,
    required this.onTap,
  });

  final Categoried categoried;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 20.0),
        child: Column(
          children: [
            Text(
              categoried.name,
              style: TextStyle(
                  color: kTitleColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 2,
              width: 70,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
