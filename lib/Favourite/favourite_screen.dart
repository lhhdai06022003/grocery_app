import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/widget/favorite_widget.dart';

import '../constant/constant.dart';
import '../model/products_model.dart';
import '../widget/cart_widget.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15,
              top: 15),
              child: Icon(
                FontAwesomeIcons.chevronLeft,
                size: 25,
                color: kPrimaryColor,
              ),
            ),
            Center(
              child: Text(
                "Favorite",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: kPrimaryColor,
                    letterSpacing: -0.16),
              ),
            ),
            listProduct.isNotEmpty
                ? ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listProduct.length,
              itemBuilder: (context, index) {
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
                          listProduct.removeAt(index);
                          setState(() {});
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',

                      ),
                    ],
                  ),
                  child: FavoriteWidget(
                      product: listProduct[index], onTap: () {}),
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
    );
  }
}
