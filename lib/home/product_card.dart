import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_tshirt/home/rating.dart';
import 'package:my_tshirt/models/product.dart';
import 'package:my_tshirt/shared/styled_button.dart';
import 'package:my_tshirt/shared/styled_text.dart';

class ProductCart extends StatefulWidget {
  const ProductCart(this.product, {super.key});

  final Product product;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: const Icon(
              Icons.favorite,
              size: 24,
            ),
            onPressed: () {},
          ),
        ),
      
        Image.asset(
          widget.product.image,
        ),
        StyledHeading(widget.product.nom),
        StyledText('${widget.product.price}\$'),
        StyledButton(
          onPressed: () {},
          child: StyledText(
            "add to cart",
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
