import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/constant/constant.dart';
import 'package:grocery_app/model/products_model.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key, required this.product, required this.onTap});

  final Product product;
  final VoidCallback onTap;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(widget.product.image),
              Column(
                children: [
                  Text(
                    widget.product.name,
                    style: TextStyle(
                        color: kTitleColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    width: 130,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: kGrayColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingActionButton(
                          heroTag: "btn1",
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.add,
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
                          heroTag: "btn2",
                          onPressed: () {},
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.remove,
                            size: 20,
                            color: kTitleColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$${widget.product.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: kTitleColor,
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "kg",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: kTitleColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
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

      ],
    );
  }
}
