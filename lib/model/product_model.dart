import 'package:flutter/material.dart';

// this is our app product model , it includes all product images and colors details
class Product {
  final int id;
  final String title;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final String description;
  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<Product> furProducts = [
  Product(
    id: 2,
    images: [
      "assets/images/bag.png",
      "assets/images/bag_.png",
      "assets/images/bag_3.png",
    ],
    colors: [
      Colors.blue,
      Colors.black,
    ],
    title: "Boorso ",
    price: 7.99,
    rating: 3.4,
    description: dummyText,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/Quran_bl.png",
      "assets/images/Quran_rd.png",
      "assets/images/Quran_gr.png",
    ],
    colors: [
      Colors.blue.shade900,
      Colors.red,
      Colors.green,
    ],
    title: "Quraan",
    price: 1.99,
    rating: 4.8,
    description: dummyText,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/watch.png",
      "assets/images/watch2.png",
    ],
    colors: [
      Colors.black,
      Colors.red,
    ],
    title: "Saacad",
    price: 15.20,
    rating: 4.1,
    description: dummyText,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/laptop-b.png",
      "assets/images/lapton_d.png",
    ],
    colors: [
      Colors.black,
      Colors.white,
    ],
    title: "Labtop",
    price: 699.99,
    rating: 4.5,
    description: dummyText,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/iphone11-black.png",
      "assets/images/iphone-11-red.png",
    ],
    colors: [
      Colors.black,
      Colors.red,
    ],
    title: "iphone",
    price: 950.20,
    rating: 4.2,
    description: dummyText,
  ),
];
String dummyText =
    "inoogu imoow macaamiil alaab ku qanciya taas oo leh\n damaanad Qarash kaaga kubixi maacun tayo leh";
