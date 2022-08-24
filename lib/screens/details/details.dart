import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/controller/cartController.dart';
import 'package:flutter_application_3/screens/shopcart/shopcart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../models/ProductNew.dart';
import 'package:like_button/like_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../controller/cartController.dart';

class DetailScreen extends StatelessWidget {
    final cartController = Get.put(CartController());
  DetailScreen({Key? key, required this.product, required this.isLiked, required this.index})
      : super(key: key);

  final Product product;
  final double size = 30;
  bool isLiked = false;
  final int index;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShopCart(),
                    ));
              },
              icon: SvgPicture.asset("assets/icons/carrinho.svg")),
          LikeButton(
            size: size,
            isLiked: isLiked,
            likeBuilder: (isLiked) {
              final color = isLiked ? Colors.red : Colors.grey;
              return Icon(
                Icons.favorite,
                color: color,
                size: size,
              );
            },
            onTap: (isLiked) async {
              SharedPreferences pef = await SharedPreferences.getInstance();
              await pef.setBool("isLiked_${product.id}", !isLiked);
              return !isLiked;
            },
          ),
        ],
      ),
      body: Column(children: [
        Image.asset(
          product.image,
          height: MediaQuery.of(context).size.height * 0.4,
          fit: BoxFit.cover,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.fromLTRB(defaultPadding,
                defaultPadding * 2, defaultPadding, defaultPadding),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(defaultBorderRadious * 3),
                topRight: Radius.circular(defaultBorderRadious * 3),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  const SizedBox(width: defaultPadding),
                  Text(
                    "\$" + product.price.toString(),
                    style: Theme.of(context).textTheme.headline6,
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: defaultPadding),
              ),
              Expanded(
                child: Text(
                  product.description,
                ),
              ),
              const Text(
                "Colors",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  ColorDot(
                    color: const Color(0xFFBEE8EA),
                    isActive: false,
                    press: () {},
                  ),
                  ColorDot(
                    color: const Color(0xFF141B4A),
                    isActive: true,
                    press: () {},
                  ),
                  ColorDot(
                    color: const Color(0xFFF45C3),
                    isActive: false,
                    press: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: defaultPadding * 1.5,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        cartController
                                  .addProduct(Product.products[index]);
                        Fluttertoast.showToast(
                          msg: "Voce adicionou ${product.title} no carrinho",
                          backgroundColor: Colors.blue,
                          toastLength: Toast.LENGTH_SHORT,
                          fontSize: 16,
                          gravity: ToastGravity.TOP,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          primary: primaryColor, shape: const StadiumBorder()),
                      child: const Text("Adicionar no carrinho")),
                ),
              )
            ]),
          ),
        )
      ]),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    required this.isActive,
    required this.press,
  }) : super(key: key);

  final Color color;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          padding: const EdgeInsets.all(defaultPadding / 4),
          decoration: BoxDecoration(
            border:
                Border.all(color: isActive ? primaryColor : Colors.transparent),
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: color,
          )),
    );
  }
}
