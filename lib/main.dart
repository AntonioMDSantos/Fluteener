import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/home/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Carrinho de compras',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Gordita",
          scaffoldBackgroundColor: Colors.blue,
          textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.black54),
          ),
        ),
        home: const HomeScreen(),
      );
    }
}

