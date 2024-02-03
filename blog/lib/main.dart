import 'package:flutter/material.dart';

import 'views/home.dart';


void main() => runApp(const Blog());

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
