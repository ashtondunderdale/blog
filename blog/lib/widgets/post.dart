import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key, required this.title, required this.subTitle, required this.category, required this.content});

  final String title;
  final String subTitle;
  final String category;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width ,
        color: Colors.grey,
        child: Text(
          title
        ),
      ),
    );
  }
}