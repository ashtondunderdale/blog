import 'package:blog/widgets/filter.dart';
import 'package:flutter/material.dart';

import '../data.dart';

class PostFilter extends StatefulWidget {
  PostFilter({super.key});
  
  late String activeFilter;

  @override
  State<PostFilter> createState() => _PostFilterState();
}

class _PostFilterState extends State<PostFilter> {

  @override
  void initState() {
    super.initState();
    widget.activeFilter = filters[0].name;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 600,
      color: Colors.white,
      child: Column(
        children: [
          for (var filter in filters)
            FilterOption(
              name: filter.name, 
              onTap: () {
                setState(() {
                  widget.activeFilter = filter.name;
                });
              }, 
              isSelected: widget.activeFilter == filter.name,
          ),
        ],
      ),
    );
  }
}