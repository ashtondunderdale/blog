import 'package:flutter/material.dart';

import '../models/post.dart';

class BlogPostPreview extends StatelessWidget {
  const BlogPostPreview({super.key, required this.post, required this.onTap});

  final Post post;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 900,
          height: 80,
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color.fromARGB(255, 237, 237, 237))),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  post.date,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: Text(
                    post.title,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}