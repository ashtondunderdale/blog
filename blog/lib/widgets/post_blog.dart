import 'package:blog/utils/styles.dart';
import 'package:flutter/material.dart';

import '../models/post.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({super.key, required this.post});

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.title,
                style: titleStyle
              ),
              Text(
                post.subTitle,
                style: subTitleStyle,         
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  post.content,
                  style: contentStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}