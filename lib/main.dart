import 'package:flutter/material.dart';
import 'package:my_tshirt/theme.dart';
import 'package:my_tshirt/wrapper.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: primaryTheme,
      home: const Wrapper(),
    ));
