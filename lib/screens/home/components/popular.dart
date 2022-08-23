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
                  demo_product.length,
                  ((index) => Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: ProductCard(
                            id: demo_product[index].id,
                            image: demo_product[index].image,
                            title: demo_product[index].title,
                            bgColor: demo_product[index].bgColor,
                            price: demo_product[index].price,
                             press: () async {
                              SharedPreferences pef = await SharedPreferences.getInstance();
                              bool isLiked = pef.getBool("isLiked_${demo_product[index].id}") ?? false;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailScreenPopular(product: demo_product[index], isLiked: isLiked,),
                                  ));
                            }),
                      )))),
        )
      ],
    );
  }
}
