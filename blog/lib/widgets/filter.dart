import 'package:blog/utils/styles.dart';
import 'package:flutter/material.dart';

class FilterOption extends StatelessWidget {
  const FilterOption({super.key, required this.name, required this.onTap, required this.isSelected});

  final String name;
  final VoidCallback onTap;
  final bool isSelected;

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
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.arrow_back,
                    size: 12,
                  ),
                ),
                Text(
                  name,
                  style: filterStyle.copyWith(
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
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