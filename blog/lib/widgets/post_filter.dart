import 'package:blog/utils/data.dart';
import 'package:blog/widgets/filter_option.dart';
import 'package:flutter/material.dart';

import '../models/filter.dart';

class PostFilter extends StatefulWidget {
  const PostFilter({super.key, required this.activeFilter, required this.onFilterSelected, required this.activePost});

  final String activeFilter;
  final Function(String) onFilterSelected;
  final String? activePost;

  @override
  State<PostFilter> createState() => _PostFilterState();
}

class _PostFilterState extends State<PostFilter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16, right: 32),
          child: FilterOption(
            name: "Home",
            isSelected: widget.activeFilter == "Home",
            onTap: () {
              setState(() {
                widget.onFilterSelected("Home");
              });
            },
            hasActivePost: widget.activePost != null &&
                posts.any((post) => post.title == "Home" && post.title == widget.activePost),
            postCount: -1,
          ),
        ),
        Container(
          width: 220,
          height: 600,
          color: Colors.white,
          child: Column(
            children: [
              for (var filter in filters)
                FilterOption(
                  name: filter.name,
                  onTap: () {
                    setState(() {
                      widget.onFilterSelected(filter.name);
                    });
                  },
                  isSelected: widget.activeFilter == filter.name,
                  hasActivePost: widget.activePost != null &&
                      posts.any((post) => post.category == filter.name && post.title == widget.activePost),
                  postCount: posts.where((post) => post.category == filter.name).length,
                ),

            ],
          ),
        ),
      ],
    );
  }
}

