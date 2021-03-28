import 'package:coding_talk_flutter/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:coding_talk_flutter/models/category.dart';

class CategoryCardWidget extends StatefulWidget {
  final Category category;
  final int index;
  final Function onTap;
  final bool isSelected;

  const CategoryCardWidget({
    this.category,
    this.index,
    this.onTap,
    this.isSelected = false,
  });

  @override
  _CategoryCardWidgetState createState() => _CategoryCardWidgetState();
}

class _CategoryCardWidgetState extends State<CategoryCardWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap();
        }
      },
      child: Container(
        height: 35,
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(
          left: widget.index == 0 ? edgs : 12,
          right: widget.index == mockCategory.length - 1 ? edgs : 0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: widget.isSelected ? orangeColor : greyColor,
          ),
          color: widget.isSelected ? orangeColor : whiteColor,
        ),
        child: Center(
          child: Text(
            widget.category.name,
            style: greyFontStyle.copyWith(
              fontSize: 10,
              color: widget.isSelected ? whiteColor : greyColor,
            ),
          ),
        ),
      ),
    );
  }
}
