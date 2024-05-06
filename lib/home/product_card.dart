import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              widget.product.image,
            ),
          ),
          StyledHeading(widget.product.nom),
          StyledText('${widget.product.price}\$'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 16,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 16,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 16,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 16,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow[700],
                size: 16,
              ),
            ],
          ),
          StyledButton(onPressed: () {}, child: StyledText("view details"))
        ],
      ),
    );
  }
}
