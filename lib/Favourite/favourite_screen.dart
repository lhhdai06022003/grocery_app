import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/Explore/explore_food_screen.dart';
import 'package:grocery_app/widget/favorite_widget.dart';
import 'package:provider/provider.dart';

import '../constant/constant.dart';
import '../model/products_model.dart';
import '../provider/product_provider.dart';
import '../widget/cart_widget.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    var _myProduct = context.watch<ProductProvider>().myProduct;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _myProduct.isNotEmpty
                  ? ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: _myProduct.length,
                itemBuilder: (_, index) {
                  var currentFavorite = _myProduct[index];
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
                                .removeFromList(currentFavorite);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('UnLiked!'),
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
                    child: FavoriteWidget(
                        product: _myProduct[index], onTap: () {}),
                  );
                },
              )
                  :   Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100.0,),
                  Center(
                    child: Image.asset("assets/images/background_favorite.png"),
                  ),
                  SizedBox(height: 70.0,),
                  Text(
                    "Your heart is empty",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: kTitleColor
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    "Start fall in love with some good goods",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: kTitleColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30.0,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExploreFoodScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: kPrimaryColor, backgroundColor: kPrimaryColor,
                        minimumSize:Size(double.infinity, 55) ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),// foreground
                      ),
                      child:Text(
                        "Start shoping",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: -0.165
                        ),
                      ),
                    ),
                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
