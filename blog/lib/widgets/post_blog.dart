import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

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
                      styleSheet: MarkdownStyleSheet(
                        textScaleFactor: 1,
                        h1: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 1.2),
                        h2: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 1.0),
                        h3: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 0.8),
                        p: const TextStyle(
                          fontSize: 14, 
                          height: 1.5, 
                          letterSpacing: 0.5
                        ),
                        blockquote: TextStyle(
                          fontSize: 16, 
                          color: Colors.grey[800], 
                          fontStyle: FontStyle.italic, 
                          letterSpacing: 0.2
                        ),
                        listBullet: const TextStyle(
                          fontSize: 16, 
                          letterSpacing: 0.2
                        ),
                      ),
                      onTapLink: (text, href, title) {
                                                print(href);

                        launchUrl(Uri.parse(href!));
                      },
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
