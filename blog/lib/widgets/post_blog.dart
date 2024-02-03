import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../models/post.dart';
import '../utils/styles.dart';

class BlogPost extends StatelessWidget {
  const BlogPost({Key? key, required this.post}) : super(key: key);

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
                style: titleStyle,
              ),
              Text(
                post.subTitle,
                style: subTitleStyle,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: SafeArea(
                    child: Markdown(
                      data: post.content,
                    ),
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
