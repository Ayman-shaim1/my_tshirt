import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final double value;
  final Color? color;

  Rating({required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildStar(value >= 1
            ? Icons.star
            : (value >= 0.5 ? Icons.star_half : Icons.star_border)),
        _buildStar(value >= 2
            ? Icons.star
            : (value >= 1.5 ? Icons.star_half : Icons.star_border)),
        _buildStar(value >= 3
            ? Icons.star
            : (value >= 2.5 ? Icons.star_half : Icons.star_border)),
        _buildStar(value >= 4
            ? Icons.star
            : (value >= 3.5 ? Icons.star_half : Icons.star_border)),
        _buildStar(value >= 5
            ? Icons.star
            : (value >= 4.5 ? Icons.star_half : Icons.star_border)),
      ],
    );
  }

  Widget _buildStar(IconData icon) {
    return Icon(
      icon,
      color: color,
      size: 16,
    );
  }
}
