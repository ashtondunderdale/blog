import 'package:flutter/material.dart';

import '../models/post.dart';

class BlogPostPreview extends StatefulWidget {
  const BlogPostPreview({Key? key, required this.post, required this.onTap});

  final Post post;
  final VoidCallback onTap;

  @override
  _BlogPostPreviewState createState() => _BlogPostPreviewState();
}

class _BlogPostPreviewState extends State<BlogPostPreview> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, top: 8),
      child: Column(
        children: [
          MouseRegion(
            onEnter: (_) => setState(() => isHovered = true),
            onExit: (_) => setState(() => isHovered = false),
            child: GestureDetector(
              onTap: widget.onTap,
              child: Container(
                width: 900,
                height: 80,
                color: isHovered ? Colors.grey[100] : Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        widget.post.date,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Text(
                          widget.post.title,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              width: 900,
              height: 0.5, 
              color: const Color.fromARGB(255, 224, 224, 224),
            ),
          ),
        ],
      ),
    );
  }
}
