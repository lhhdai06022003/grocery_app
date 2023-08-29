import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/Cart/payment_screen.dart';
import 'package:grocery_app/model/products_model.dart';
import 'package:grocery_app/widget/cart_widget.dart';
import 'package:provider/provider.dart';

import '../constant/constant.dart';
import '../provider/product_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var _myCart = context.watch<ProductProvider>().myCart;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: -0.165,
            color: kPrimaryColor,
          ),
        ),
        leading: BackButton(),
        backgroundColor: Colors.white,
        foregroundColor: kPrimaryColor,
        elevation: 0,
        centerTitle: true,
      ),
      bottomNavigationBar:  InkWell(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PaymentScreen()));
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(30.0)),
            ),
            child: Text(
              'CheckOut',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _myCart.isNotEmpty
                  ? ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: _myCart.length,
                      itemBuilder: (context, index) {
                        var currentCart = _myCart[index];
                        return Slidable(
                          key: const ValueKey(0),
                          endActionPane: ActionPane(
                            dismissible: DismissiblePane(onDismissed: () {
                              // we can able to perform to some action here
                            }),
                            motion: const DrawerMotion(),
                            children: [
                              SlidableAction(
                                autoClose: true,
                                flex: 1,
                                onPressed: (value) {
                                  context
                                      .read<ProductProvider>()
                                      .removeFromCart(currentCart);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Delete'),
                                      duration: Duration(seconds: 2), // Thời gian hiển thị
                                    ),
                                  );
                                },
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                icon: Icons.delete,
                                label: 'Delete',
                              ),
                            ],
                          ),
                          child: CartWidget(
                              product: _myCart[index], onTap: () {}),
                        );
                      },
                    )
                  : const Center(
                      child: Text("Your List is Empty",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
