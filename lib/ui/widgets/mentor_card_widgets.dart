import 'package:coding_talk_flutter/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:coding_talk_flutter/models/mentor.dart';

class MentorCardWidgets extends StatelessWidget {
  final Mentor mentor;

  const MentorCardWidgets({
    this.mentor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(mentor.photo),
            ),
          ),
        ),
        SizedBox(height: 6),
        Text(
          mentor.name,
          style: blackFontStyle.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 6),
        Text(
          mentor.job,
          style: greyFontStyle.copyWith(
            fontSize: 12,
          ),
        ),
        Text(
          "${mentor.reviews.toString()} reviews",
          style: greyFontStyle.copyWith(
            fontSize: 12,
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: MaterialButton(
            color: orangeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            child: Text(
              "Hire Me",
              style: whiteFontStyle,
            ),
            onPressed: () {},
            elevation: 0,
          ),
        )
      ],
    );
  }
}
