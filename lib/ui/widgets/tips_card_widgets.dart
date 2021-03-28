import 'package:coding_talk_flutter/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:coding_talk_flutter/models/tips.dart';

class TipscardWidgets extends StatelessWidget {
  final Tips tips;

  const TipscardWidgets({
    this.tips,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(tips.photo),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              tips.tips,
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: whiteFontStyle.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
        )
      ],
    );
  }
}
