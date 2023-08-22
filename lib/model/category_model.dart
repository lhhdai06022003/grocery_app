import 'package:flutter/material.dart';

class Categoried{
  final int id;
  final String image;
  final String name;
  final Color background;

  Categoried({required this.id,
    required this.image,
    required this.name,
    required this.background});


}
List<Categoried> listCategoried = [
  Categoried(
    id: 1,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/fruit.png?alt=media&token=72c5f29a-e705-4f05-a33f-12ca014f14cd',
    name: "Fruits",
    background: Color(0xffEDD0FF),
  ),
  Categoried(
    id: 2,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/vegetable.png?alt=media&token=cbb5482a-8094-42a7-ab4c-ddffbf159061',
    name: "Vegtables",
    background: Color(0xffFFD9BA),
  ),
  Categoried(
    id: 3,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/meat.png?alt=media&token=383552cb-8c86-466c-8d5c-67e21824212d',
    name: "Meat",
    background: Color(0xffFACCCC),
  ),
  Categoried(
    id: 4,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/fish.png?alt=media&token=e5f42db7-107a-408e-a97a-ff04205c2eea',
    name: "Fish",
    background: Color(0xffFBC1BD),
  ),
  Categoried(
    id: 5,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/seafood.png?alt=media&token=97f4a503-e6e6-478d-a997-fedaa49429f4',
    name: "Sea food",
    background: Color(0xffFFE299),
  ),
  Categoried(
    id: 6,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/juice.png?alt=media&token=720464f3-042b-472c-bce3-bc55e488a1bd',
    name: "Juice",
    background: Color(0xffD3E5C4),
  ),
  Categoried(
    id: 7,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/ice%20cream.png?alt=media&token=4c036a18-f6de-4ccf-a928-dc93d9f3c656',
    name: "Egg & Milk",
    background: Color(0xffDAF2FC),
  ),
  Categoried(
    id: 8,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/ice%20cream.png?alt=media&token=4c036a18-f6de-4ccf-a928-dc93d9f3c656',
    name: "Ice cream",
    background: Color(0xffFFDEF6),
  ),
  Categoried(
    id: 9,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/ice%20cream.png?alt=media&token=4c036a18-f6de-4ccf-a928-dc93d9f3c656',
    name: "Cake",
    background: Color(0xffFECA97),
  ),
  Categoried(
    id: 10,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/beer.png?alt=media&token=ae91d0a1-1b71-4101-bb01-d5cb7eb82a3b',
    name: "Beer",
    background: Color(0xffFFC0C0),
  ),
  Categoried(
    id: 11,
    image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/shampoo.png?alt=media&token=67c12dd8-c276-4060-afb2-0d8eb718477b',
    name: "Shampoo",
    background: Color(0xffD6FAE9),
  ),
];

