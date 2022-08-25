import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final Color bgColor;

Product({
    required this.id,
    required this.image,
    required this.description,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}


List<Product> productsPopular = [
  Product(
    id: 5,
    image: "assets/images/bermuda1.png",
    title: "Bermuda tac",
    description:
        "Uma Bermuda tac é uma bermuda de pulôver sem gola, com um decote redondo e uma carcela de cerca de 8 a 13 cm de comprimento e geralmente com 2-5 botões",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    id: 6,
    image: "assets/images/bermuda2.png",
    title: "Bermuda moletom",
    description:
        "Uma camisa manga longa é uma camisa de pulôver com gola, sem decote uma carcela de cerca de 10 a 18 cm de comprimento e sem botões",
    price: 99,
  ),
  Product(
      id: 7,
      description:
          "Uma camisa henley é uma camisa de pulôver sem gola, com um decote redondo e uma carcela de cerca de 8 a 13 cm de comprimento e geralmente com 2-5 botões",
      image: "assets/images/bermuda3.png",
      title: "Bermuda jeans",
      price: 120,
      bgColor: const Color(0xFFF8FEFB)),
  Product(
      id: 8,
      description:
          "Uma camisa henley é uma camisa de pulôver sem gola, com um decote redondo e uma carcela de cerca de 8 a 13 cm de comprimento e geralmente com 2-5 botões",
      image: "assets/images/bermuda4.png",
      title: "Bermuda fit",
      price: 149,
      bgColor: const Color(0xFFEEEEED))
];
