import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomBottomNavbarItem extends StatelessWidget {
  const CustomBottomNavbarItem({
    super.key,
    required this.assets,
    this.isSelected = false,
  });

  final String assets;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                assets,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
      ],
    );
  }
}
