import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    image: "assets/images/camiseta.png",
    title: "Manga curta",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/camisetalo.png",
    title: "Manga longa",
    price: 99,
  ),
  Product(
    image: "assets/images/camisetaest.png",
    title: "Camiseta estampada",
    price: 120,
    bgColor: const Color(0xFFF8FEFB)
    ),
    Product(
      image: "assets/images/camisetataidai.png", 
      title: "Camiseta taidai", 
      price: 149,
      bgColor: const Color(0xFFEEEEED))
];