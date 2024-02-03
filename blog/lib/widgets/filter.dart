import 'package:blog/utils/styles.dart';
import 'package:flutter/material.dart';

class FilterOption extends StatelessWidget {
  const FilterOption({Key? key, required this.name, required this.onTap, required this.isSelected, required this.hasActivePost});

  final String name;
  final VoidCallback onTap;
  final bool isSelected;
  final bool hasActivePost;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8),
        child: SizedBox(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: hasActivePost ? const Icon(
                    Icons.arrow_back,
                    size: 12,
                  ) : const SizedBox(),
                ),
                Text(
                  name,
                  style: filterStyle.copyWith(
                    fontWeight: isSelected || hasActivePost ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
