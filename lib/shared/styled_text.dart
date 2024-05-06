import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  StyledText(this.text, {this.color, super.key});
  final String text;
  Color? color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.nunitoSans(
          textStyle: Theme.of(context).textTheme.bodyMedium,
          color: color,
        ));
  }
}

class StyledHeading extends StatelessWidget {
  StyledHeading(this.text, {this.color, super.key});
  final String text;
  Color? color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.nunitoSans(
          color: color, textStyle: Theme.of(context).textTheme.headlineMedium),
    );
  }
}

class StyledTitle extends StatelessWidget {
  StyledTitle(this.text, {this.color, super.key});
  final String text;
  Color? color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.nunitoSans(
          color: color, textStyle: Theme.of(context).textTheme.titleMedium),
    );
  }
}
