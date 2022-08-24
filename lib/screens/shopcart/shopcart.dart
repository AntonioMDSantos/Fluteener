import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/cartTotal.dart';
import '../../widgets/cartProduct.dart';
import '../../widgets/cartTotal.dart';

class ShopCart extends StatefulWidget {
  const ShopCart({Key? key}) : super(key: key);

  @override
  State<ShopCart> createState() => _ShopCartState();
}

class _ShopCartState extends State<ShopCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Your Cart"),
          elevation: 0,
          leading: const BackButton(color: Colors.black),
        ),
        body: Column(
          children: [
            CartProduct(),
            CartTotal(),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16, bottom: 8.0, top: 4.0),
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16.0,
                              ),
                              primary: Colors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                side: BorderSide(
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Check out with",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 4),
                                Container(
                                  width: 60,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              "https://www.techrounder.com/wp-content/uploads/2019/08/paypal-logo.png"))),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                  Text("Continue Shopping")
                ]),
              ),
            )
          ],
        ));
  }
}
