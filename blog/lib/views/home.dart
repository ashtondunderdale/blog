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
  String? activePost = "building a computer";
  List<dynamic> filteredPosts = [];

  @override
  void initState() {
    super.initState();
    activeFilter = "Home";
    filteredPosts = posts;
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
                            for (var post in filteredPosts) createPostPreview(post) ?? const SizedBox(),
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
                      filterPosts();
                    });
                  },
                  activePost: activePost,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void filterPosts() {
    filteredPosts = posts.where((post) => activeFilter == "Home" || activeFilter == post.category).toList();
  }

  Widget? createPostPreview(dynamic post) {
    return BlogPostPreview(
      post: post,
      onTap: () {
        setState(() {
          activePost = post.title;
        });
      },
    );
  }

  Widget displayPost(String postCategory) {
    var post = filteredPosts.firstWhere((post) => post.title == postCategory);

    return BlogPost(
      post: post,
    );
  }
}
