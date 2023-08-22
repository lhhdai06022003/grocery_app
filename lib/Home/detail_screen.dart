import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/constant/constant.dart';

import '../model/products_model.dart';
import '../widget/popular_widget.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool favorite = false;

  void toggleFavorive() {

    if(favorite == false)
    {
      setState(() {
        favorite = true;
      });
    }
    else
    {
      setState(() {
        favorite = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.0, left: 15.0),
                  child: Icon(
                    FontAwesomeIcons.chevronLeft,
                    size: 25,
                    color: kPrimaryColor,
                  ),
                ),
                Image.asset("assets/images/background_mango.png"),
              ],
            ),
            Center(
              child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/apple.png?alt=media&token=71ef92c9-565f-460b-a76c-7efe8985cf85"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //name
                  Text(
                    "Red Apple",
                    style: TextStyle(
                        color: kTitleColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  //price
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "\$1.2",
                        style: TextStyle(
                            color: kTitleColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            letterSpacing: -0.165),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "/kg",
                        style: TextStyle(
                            color: kTitleColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            letterSpacing: -0.165),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  //description
                  Text(
                    "Golden Ripe Alphonsa mangoes delivered to your house in the most hygenic way ever... Best for eating plain but can also be made into shakes and cakes.",
                    style: TextStyle(
                        color: kTitleColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  // button add and remove
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 300,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            color: Color(0xffF4F4F4),
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromRGBO(109, 56, 5, 0.20),
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                  spreadRadius: 0)
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FloatingActionButton(
                              heroTag: "btn3",
                              onPressed: () {},
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                size: 20,
                                color: kTitleColor,
                              ),
                            ),
                            Text(
                              "1",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                            FloatingActionButton(
                              heroTag: "btn4",
                              onPressed: () {},
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: kTitleColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          setState(() {
                            toggleFavorive();
                          });
                        },
                        child: Icon(

                          favorite == false ? FontAwesomeIcons.heart : FontAwesomeIcons.solidHeart,
                          color: kPrimaryColor,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  // add to cart
                  InkWell(
                    onTap: (){
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Text(
                          'Add To cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              letterSpacing: -0.165
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  SizedBox(
                    height: 1,
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        color: kTitleColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text(
                    "You may also need",
                    style: TextStyle(
                      color: kTitleColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 18
                    ),
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
                                      builder: (context) => DetailScreen()));
                            });
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
