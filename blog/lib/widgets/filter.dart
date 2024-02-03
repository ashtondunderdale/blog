import 'package:blog/utils/styles.dart';
import 'package:flutter/material.dart';

class FilterOption extends StatefulWidget {
  const FilterOption({Key? key, required this.name, required this.onTap, required this.isSelected, required this.hasActivePost});

  final String name;
  final VoidCallback onTap;
  final bool isSelected;
  final bool hasActivePost;

  @override
  _FilterOptionState createState() => _FilterOptionState();
}

class _FilterOptionState extends State<FilterOption> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: SizedBox(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: widget.hasActivePost
                        ? const Icon(
                            Icons.arrow_back,
                            size: 12,
                          )
                        : const SizedBox(),
                  ),
                  Text(
                    widget.name,
                    style: filterStyle.copyWith(
                      fontWeight: widget.isSelected || widget.hasActivePost ? FontWeight.bold : FontWeight.normal,
                      color: isHovered ? Color.fromARGB(255, 121, 121, 121) : Colors.black, // Change text color on hover
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
