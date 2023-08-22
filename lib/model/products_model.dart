import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final String kilogam;
  final String image;
  final String description;

  Product({required this.id,required this.name,
    required this.price,
    required this.kilogam,
    required this.image,
    required this.description});

}
List<Product> listProduct = [
  Product(
      id: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/apple.png?alt=media&token=71ef92c9-565f-460b-a76c-7efe8985cf85',
      name: "Red Apple",
      price: 4.5,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 2,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/banana.png?alt=media&token=c6e27e46-5746-4e40-983b-f996de0fb7db",
      name: "Orginal Banana",
      price: 5.0,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 3,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/bowl.png?alt=media&token=b5fc3208-15eb-4e27-ab32-94f5f4fd01e1",
      name: "Avocado Bowl",
      price: 1.9,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 4,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Strawberry.png?alt=media&token=ac3f5b86-2edf-4315-bf1c-cdff710dd0ed",
      name: "Strawberry",
      price: 3.6,
      description: description,
      kilogam: "1kg"
  ),
];
List<Product> listVegtables = [
  Product(
      id: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/Broccoli.jpg?alt=media&token=a4438258-7c15-4456-9fd6-aeb528bbbf7e',
      name: "Broccoli",
      price: 4.5,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 2,
      image: "https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/Celery.jpg?alt=media&token=5cf467b0-cf65-4990-8ac7-54786177e82f",
      name: "Celery",
      price: 5.0,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 3,
      image: "https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/Corn.jpg?alt=media&token=03d786b9-7c7f-439a-a5b1-a87fac68f6ac",
      name: "Corn",
      price: 1.9,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 4,
      image: "https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/Onion.jpg?alt=media&token=fd4d4f67-82b1-4c88-89e5-6b6a64174da5",
      name: "Onion",
      price: 3.6,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 5,
      image: "https://firebasestorage.googleapis.com/v0/b/food-app-f2b5a.appspot.com/o/Water%20morning%20glory.jpg?alt=media&token=dedb8e8d-3032-4f06-8a02-d65ddd425b9f",
      name: "Glory",
      price: 3.6,
      description: description,
      kilogam: "1kg"
  ),
];
List<Product> listMeat = [
  Product(
      id: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Whole%20Chicken.jpg?alt=media&token=ca001a67-7045-477d-ada0-caa3a6c5a388',
      name: "Whole Chicken",
      price: 4.5,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 2,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/beef.jpg?alt=media&token=4745c949-9ed7-4614-ae86-7d93078629f0",
      name: "Beef",
      price: 5.0,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 3,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/lamb.jpg?alt=media&token=22cc4a64-d9f8-4257-aafc-def14a3024ba",
      name: "Lamb",
      price: 1.9,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 4,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/whole%20duck.jpg?alt=media&token=ea0c08ea-563f-424e-95b0-f5a7da376be6",
      name: "Whole Duck",
      price: 3.6,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 5,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/pork.jpg?alt=media&token=3e6e54fe-8692-440f-9d4c-b61813e6d033",
      name: "Pork",
      price: 3.6,
      description: description,
      kilogam: "1kg"
  ),
];
List<Product> listFish = [
  Product(
      id: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Anchovy.png?alt=media&token=93d7d78d-aed4-4464-b83a-3beaa96b0b58',
      name: "Anchovy",
      price: 4.5,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 2,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Tuna.jpg?alt=media&token=fe8b12bb-5c0e-4191-b2e1-7a6e3b4e79b3",
      name: "Tuna",
      price: 5.0,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 3,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Salmon.png?alt=media&token=11f74e18-79c6-4b2a-91e9-376a7489cf26",
      name: "Salmon",
      price: 1.9,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 4,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Mackerel.png?alt=media&token=1edfcfcf-65e9-4585-b5f0-33c8431e132f",
      name: "Mackerel",
      price: 3.6,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 5,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Carp.jpg?alt=media&token=3c27e6a9-1931-4469-bfb8-ea77c8795e1c",
      name: "Carp",
      price: 3.6,
      description: description,
      kilogam: "1kg"
  ),
];
List<Product> listSeaFood= [
  Product(
      id: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/lobster.jpg?alt=media&token=d6a49230-0ea1-4524-bfe0-7b2519d00925',
      name: "Lobster",
      price: 4.5,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 2,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/squid.png?alt=media&token=913d40ba-864a-48f1-9c08-de9eceffd5e3",
      name: "Squid",
      price: 5.0,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 3,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/brown%20shrimp.jpg?alt=media&token=a1db3c94-d31e-4147-a4f4-9047b9203042",
      name: "Brown Shrimp",
      price: 1.9,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 4,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Sea%20Crab.jpg?alt=media&token=8daa84eb-0e3b-4277-b1d6-fff2b804f3c0",
      name: "Sea Crab",
      price: 3.6,
      description: description,
      kilogam: "1kg"
  ),
  Product(
      id: 5,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/lobster.jpg?alt=media&token=d6a49230-0ea1-4524-bfe0-7b2519d00925",
      name: "Lobster",
      price: 3.6,
      description: description,
      kilogam: "1kg"
  ),
];
List<Product> listSHAMPOO= [
  Product(
      id: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/DAU-GOI-TRESEMME%20640G.png?alt=media&token=90420629-83b4-4be3-9c09-0207fec40a28',
      name: "TRESemmé 640g",
      price: 4.5,
      description: description,
      kilogam: "640g"
  ),
  Product(
      id: 2,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Dau-Goi-Clear-Bac-Ha%20900g.jpg?alt=media&token=b0b869ac-a833-4d29-be7e-97959428f139",
      name: "Clear Bạc Hà 900g",
      price: 5.0,
      description: description,
      kilogam: "900g"
  ),
  Product(
      id: 3,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Romano%20650g.jpg?alt=media&token=84e2e115-d51d-4707-83d2-1870029aabd1",
      name: "Romano 650g",
      price: 1.9,
      description: description,
      kilogam: "650g"
  ),
  Product(
      id: 4,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/X-MEN%20630G.jpg?alt=media&token=45384bee-4c4f-4ba0-ad2d-1f2d1a8f10ef",
      name: "X-MEN 630G",
      price: 3.6,
      description: description,
      kilogam: "630G"
  ),
  Product(
      id: 5,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Dove%20880gr.jpg?alt=media&token=983ac755-d3c9-4d6e-9c62-b3cf035210e1",
      name: "Dove 800g",
      price: 3.6,
      description: description,
      kilogam: "800g"
  ),
];
List<Product> listBEER= [
  Product(
      id: 1,
      image: 'https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/333%20Beer.jpg?alt=media&token=ba06da84-bbda-45cd-a445-fe20a58f4c7b',
      name: "333 Beer",
      price: 4.5,
      description: description,
      kilogam: "1lon"
  ),
  Product(
      id: 2,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Bia%20S%C3%A0i%20G%C3%B2n%20Xanh.jpg?alt=media&token=28900e10-9e12-437d-a1e0-f0a358446580",
      name: "Green Sài Gòn Beer",
      price: 5.0,
      description: description,
      kilogam: "1lon"
  ),
  Product(
      id: 3,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Heineken%20Beer.jpg?alt=media&token=86f4811b-1c75-4f3d-bb69-51c9d26a0aa4",
      name: "Heineken Beer",
      price: 1.9,
      description: description,
      kilogam: "1lon"
  ),
  Product(
      id: 4,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Larue%20Beer.jpg?alt=media&token=8f1816c9-2f12-4227-bf4e-ae1962e37287",
      name: "Larue Beer",
      price: 3.6,
      description: description,
      kilogam: "1lon"
  ),
  Product(
      id: 5,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Tiger%20Beer.jpg?alt=media&token=1bf3c7e6-bb95-4d82-8362-3eddf3be0b98",
      name: "Tiger Beer",
      price: 3.6,
      description: description,
      kilogam: "1lon"
  ),
  Product(
      id: 6,
      image: "https://firebasestorage.googleapis.com/v0/b/grocery-app-bfed1.appspot.com/o/Vi%E1%BB%87t%20Beer.jpg?alt=media&token=0b7709ef-2b7e-47f5-ae5b-34d333b69a6a",
      name: "Việt Beer",
      price: 3.6,
      description: description,
      kilogam: "1lon"
  ),
];
const String description =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy";

