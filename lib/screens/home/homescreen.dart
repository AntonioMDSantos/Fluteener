import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_svg/svg.dart';

import 'components/categories.dart';
import 'components/searchform.dart';
import 'components/section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [],
        ),
      ),
      body: Padding(
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
            SectionTitle(
              title: "Novos Produtos",
              pressSeeAll: () {},
            ),
            
          ],
        ),
      ),
    );
  }
}

