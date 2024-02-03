import 'package:blog/utils/data.dart';
import 'package:blog/widgets/post_blog.dart';
import 'package:blog/widgets/post_preview.dart'; // Import PostPreview widget
import 'package:blog/widgets/post_filter.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String activeFilter;

  @override
  void initState() {
    super.initState();
    activeFilter = "Computer Architecture";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 246, 246),
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
                        createPost(post) ?? const SizedBox(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 800,
                ),
                child: PostFilter(
                  activeFilter: activeFilter,
                  onFilterSelected: (String selectedFilter) {
                    setState(() {
                      activeFilter = selectedFilter;

                      if (activeFilter == "Home") {

                      }
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget? createPost(dynamic post) {
    if (activeFilter == "Home") {
      return BlogPostPreview(
        post: post
      );
    } 
    else if (activeFilter == post.category) {
      return BlogPost(
        post: post
      );
    } 
    return null;
  }
}
