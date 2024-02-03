import 'package:blog/styles.dart';
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
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: titleStyle
              ),
              Text(
                subTitle,
                style: subTitleStyle,         
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  content,
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