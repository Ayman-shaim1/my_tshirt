import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_tshirt/home/product_card.dart';
import 'package:my_tshirt/models/product.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Product> _products = [
    Product(
        id: "1",
        nom: "product 1",
        description: "hello world",
        gendre: Gendre.man,
        price: 99.9,
        image: "assets/images/p1.png"),
    Product(
        id: "2",
        nom: "product 2",
        description: "hello world",
        gendre: Gendre.man,
        price: 199.9,
        image: "assets/images/p2.png"),
    Product(
        id: "3",
        nom: "product 3",
        description: "hello world",
        gendre: Gendre.man,
        price: 129.9,
        image: "assets/images/p3.png")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 100.0,
            children: List.generate(_products.length, (index) {
              return ProductCart(_products[index]);
            })),
      )),
    );
  }
}
