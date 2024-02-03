import 'package:blog/utils/data.dart';
import 'package:blog/widgets/post_blog.dart';
import 'package:blog/widgets/post_preview.dart';
import 'package:blog/widgets/post_filter.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String activeFilter;
  String? activePost;

  @override
  void initState() {
    super.initState();
    activeFilter = "Home";
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
                  child: activePost == null
                      ? Column(
                          children: [
                            for (var post in posts) createPostPreview(post) ?? const SizedBox(),
                          ],
                        )
                      : displayPost(activePost!),
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
                      activePost = null; 
                    });
                  }, activePost: activePost,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget? createPostPreview(dynamic post) {
    if (activeFilter == "Home" || activeFilter == post.category) {
      return BlogPostPreview(
        post: post,
        onTap: () {
          setState(() {
            activePost = post.category;
          });
        },
      );
    }
    return null;
  }

  Widget displayPost(String postCategory) {
    var post = posts.firstWhere((post) => post.category == postCategory);

    return BlogPost(
      post: post,
    );
  }
}
