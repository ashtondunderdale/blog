import 'package:blog/utils/data.dart';
import 'package:blog/widgets/filter.dart';
import 'package:flutter/material.dart';

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
              widget.onFilterSelected("Home");
            },       
            hasActivePost: widget.activePost == "Home",
          ),
        ),
        Container(
          width: 200,
          height: 600,
          color: Colors.white,
          child: Column(
            children: [
              for (var filter in filters)
                FilterOption(
                  name: filter.name,
                  onTap: () {
                    widget.onFilterSelected(filter.name);
                  },
                  isSelected: widget.activeFilter == filter.name,
                  hasActivePost: widget.activePost == filter.name,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
