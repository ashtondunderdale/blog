import 'package:flutter/material.dart';

import '../models/post.dart';

class BlogPostPreview extends StatelessWidget {
  const BlogPostPreview({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 80,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color.fromARGB(255, 237, 237, 237))),
      ),
      child: const Row(

      ),
    );
  }
}