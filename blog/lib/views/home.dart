import 'package:blog/data.dart';
import 'package:blog/widgets/post.dart';
import 'package:blog/widgets/post_filter.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      body: SingleChildScrollView(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: MediaQuery.of(context).size.height * 2,
                  width: MediaQuery.of(context).size.width / 2.2,
                  color: Colors.white,
                  child: Column(
                    children: [
                      for (var post in posts)
                        Post(
                          title: post.title, 
                          subTitle: post.subTitle, 
                          category: post.category,
                          content: post.content,
                        )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 800
                ),
                child: PostFilter(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
