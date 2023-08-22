import 'package:flutter/material.dart';
import 'package:grocery_app/constant/constant.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100.0,),
              Center(
                child: Image.asset("assets/images/order_success.png"),
              ),
              SizedBox(height: 70.0,),
              Text(
                "Your Order Has Been Accepted",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: kTitleColor
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                "We’ve accepted your order, and we’re getting it ready.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: kTitleColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0,),
              ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: kPrimaryColor, backgroundColor: kPrimaryColor,
                    minimumSize:Size(double.infinity, 55) ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),// foreground
                  ),
                  child:Text(
                    "Track Order",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: -0.165
                    ),
                  ),
              ),
              SizedBox(height: 15.0,),
              OutlinedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  minimumSize:Size(double.infinity, 55) ,
                  foregroundColor: kPrimaryColor,
                  side: BorderSide(width: 1, color: kPrimaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),// foreground
                ),
                child:Text(
                  "Back Home",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor,
                      letterSpacing: -0.165
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
