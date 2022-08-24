import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/details/details.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constants.dart';
import '../../../models/ProductPopular.dart';
import '../../details/detailsPopular.dart';
import 'productCard.dart';
import 'section.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  Product.productsPopular.length,
                  ((index) => Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: ProductCard(
                            id: Product.productsPopular[index].id,
                            image: Product.productsPopular[index].image,
                            title: Product.productsPopular[index].title,
                            bgColor: Product.productsPopular[index].bgColor,
                            price: Product.productsPopular[index].price,
                             press: () async {
                              SharedPreferences pef = await SharedPreferences.getInstance();
                              bool isLiked = pef.getBool("isLiked_${Product.productsPopular[index].id}") ?? false;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreenPopular(product: Product.productsPopular[index], isLiked: isLiked,),
                                  ));
                            }),
                      )))),
        )
      ],
    );
  }
}
