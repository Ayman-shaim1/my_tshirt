import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_tshirt/home/product_card.dart';
import 'package:my_tshirt/models/product.dart';
import 'package:my_tshirt/shared/styled_button.dart';
import 'package:my_tshirt/shared/styled_text.dart';

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
        image: "assets/images/p3.png"),
    Product(
        id: "4",
        nom: "product 4",
        description: "hello world",
        gendre: Gendre.man,
        price: 129.9,
        image: "assets/images/p3.png"),
    Product(
        id: "5",
        nom: "product 5",
        description: "hello world",
        gendre: Gendre.man,
        price: 129.9,
        image: "assets/images/p3.png"),
    Product(
        id: "6",
        nom: "product 6",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyledHeading("Lorem ipsum dolor sit amet"),
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Image.asset(
                  "assets/images/bg-2.png",
                  fit: BoxFit.contain,
                ),
                Positioned(
                  top: 8,
                  // left: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledText(
                          "Lorem ipsum dolor sit amet, consectetur adipisci",
                          color: Colors.white,
                        ),
                        StyledText(
                          "Cras consectetur est dui, at maximus mi laoreet,",
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: StyledButton(
                  onPressed: () {},
                  child: StyledText(
                    "view more",
                    color: Colors.white,
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            StyledHeading("Best Selling"),
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 35.0,
                  mainAxisSpacing: 0.0,
                  childAspectRatio: 0.55,
                  children: List.generate(_products.length, (index) {
                    return ProductCart(_products[index]);
                  })),
            ),
          ],
        ),
      )),
    );
  }
}
