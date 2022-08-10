import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
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
                  demo_product.length,
                  ((index) => Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: ProductCard(
                            image: demo_product[index].image,
                            title: demo_product[index].title,
                            bgColor: demo_product[index].bgColor,
                            price: demo_product[index].price,
                            press: () {}),
                      )))),
        )
      ],
    );
  }
}
