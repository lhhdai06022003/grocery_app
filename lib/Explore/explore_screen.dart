import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/model/category_model.dart';
import 'package:grocery_app/widget/category_widget.dart';

import '../constant/constant.dart';
import 'explore_food_screen.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children:   [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children:  const [
                  SizedBox(width: 5,),
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: kPrimaryColor
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 50,
              color: Color(0xffF3F3F3),
              child:  Padding(
                padding:  EdgeInsets.symmetric(vertical: 5.0),
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
                    prefixIcon: Icon(FontAwesomeIcons.search,color: kSecondaryColor,),

                  ),

                ),
              ),
            ),
            SizedBox(height: 15.0,),
            GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.75,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              itemCount: listCategoried.length,
              itemBuilder: (BuildContext context, int index){
                return CategoryWidget(
                    categoried: listCategoried[index],
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (context) => ExploreFoodScreen()));
                    });
              },
            ),
          ],
        ),
      ),

    );
  }
}
