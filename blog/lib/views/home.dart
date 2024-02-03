import 'package:blog/data.dart';
import 'package:blog/widgets/post.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: MediaQuery.of(context).size.height * 2,
              width: MediaQuery.of(context).size.width / 2.5,
              color: const Color.fromARGB(255, 225, 225, 225),
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
        ),
      ),
    );
  }
}
