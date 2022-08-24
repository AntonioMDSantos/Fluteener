import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/models/ProductNew.dart';
import 'package:flutter_application_3/screens/shopcart/shopcart.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/cartController.dart';
import 'components/categories.dart';
import 'components/newArrival.dart';
import 'components/popular.dart';
import 'components/productCard.dart';
import 'components/searchform.dart';
import 'components/section.dart';

class HomeScreen extends StatelessWidget {
  final cartController = Get.put(CartController());
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
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
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Explore",
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w500, color: Colors.black)),
                const Text(
                  "Carrinho de Compras",
                  style: TextStyle(fontSize: 18),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: SearchForm(),
                ),
                const Categories(),
                const SizedBox(height: defaultPadding),
                const NewArrival(),
                const SizedBox(height: defaultPadding),
                const Popular(),
              ],
            ),
        ),
      ),
    );
  }
}
