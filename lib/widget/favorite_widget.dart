import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/constant/constant.dart';
import 'package:grocery_app/model/products_model.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key, required this.product, required this.onTap});

  final Product product;
  final VoidCallback onTap;

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(widget.product.image,width: 100,height: 100,),
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
                  InkWell(
                    onTap: (){
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add_shopping_cart,
                          size: 21,
                          color: kPrimaryColor,
                        ),
                        Text(
                          "Add to cart",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: kPrimaryColor
                          ),
                        )
                      ],
                    ),
                  )

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
