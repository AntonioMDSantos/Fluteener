import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/details/details.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';
import '../../../models/ProductNew.dart';
import 'productCard.dart';
import 'section.dart';


class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Novos Produtos",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  products.length,
                  ((index) => Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: ProductCard(
                            id: products[index].id,
                            image: products[index].image,
                            title: products[index].title,
                            bgColor: products[index].bgColor,
                            price: products[index].price,
                            press: () async { 
                              SharedPreferences pef =
                                  await SharedPreferences.getInstance();
                              bool isLiked = pef.getBool(
                                      "isLiked_${products[index].id}") ??
                                  false;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                      product: products[index],
                                      isLiked: isLiked, index: index,
                                    ),
                                  ));
                            }),
                      )))),
        )
      ],
    );
  }
}
