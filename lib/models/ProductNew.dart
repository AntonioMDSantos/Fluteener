import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;
  final Color bgColor;

  static var demo_products;

  Product({
    required this.id,
    required this.image,
    required this.description,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Product> demo_product = [
  Product(
    id: 1,
    image: "assets/images/camiseta.png",
    title: "Manga curta",
    description: "Uma camisa manga curta é uma camisa de pulôver sem gola, com um decote redondo e uma carcela de cerca de 8 a 13 cm de comprimento e geralmente com 2-5 botões",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    id: 2,
    image: "assets/images/camisetalo.png",
    title: "Manga longa",
    description: "Uma camisa manga longa é uma camisa de pulôver com gola, sem decote uma carcela de cerca de 10 a 18 cm de comprimento e sem botões",
    price: 99,
  ),
  Product(
    id: 3,
    description: "Uma camisa henley é uma camisa de pulôver sem gola, com um decote redondo e uma carcela de cerca de 8 a 13 cm de comprimento e geralmente com 2-5 botões",
    image: "assets/images/camisetaest.png",
    title: "Camiseta estampada",
    price: 120,
    bgColor: const Color(0xFFF8FEFB)
    ),
    Product(
      id: 4,
      description: "Uma camisa henley é uma camisa de pulôver sem gola, com um decote redondo e uma carcela de cerca de 8 a 13 cm de comprimento e geralmente com 2-5 botões",
      image: "assets/images/camisetataidai.png", 
      title: "Camiseta taidai", 
      price: 149,
      bgColor: const Color(0xFFEEEEED))
];