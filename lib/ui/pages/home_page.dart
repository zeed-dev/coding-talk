import 'package:coding_talk_flutter/models/category.dart';
import 'package:coding_talk_flutter/models/mentor.dart';
import 'package:coding_talk_flutter/models/tips.dart';
import 'package:coding_talk_flutter/shared/theme.dart';
import 'package:coding_talk_flutter/ui/widgets/category_card_widgets.dart';
import 'package:coding_talk_flutter/ui/widgets/mentor_card_widgets.dart';
import 'package:coding_talk_flutter/ui/widgets/tips_card_widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedCategory;

  @override
  void initState() {
    super.initState();
    selectedCategory = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // NOTE: HEADER
                  Container(
                    height: 50,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            // NOTE: PHOTO
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage("assets/PICT1.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 12),
                            // NOTE: TEXT
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good Morning,",
                                  style: greyFontStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "Bimo Semesta",
                                  style: whiteFontStyle.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        // NOTE: ICON LONCENG
                        Image.asset(
                          "assets/NOTIFICATION.png",
                          width: 18,
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: whiteColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // NOTE: SEARCH
                        Padding(
                          padding: EdgeInsets.only(
                            top: edgs,
                            left: edgs,
                            right: edgs,
                            bottom: 12,
                          ),
                          child: Row(
                            children: [
                              // NOTE: TEXT FIELD
                              Flexible(
                                flex: 1,
                                child: Container(
                                  height: 50,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        filled: true,
                                        fillColor: Color(0xFFF3F4F8),
                                        hintText: "Find your favorite mentor",
                                        hintStyle: greyFontStyle.copyWith(
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.only(left: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: orangeColor,
                                ),
                                child: Icon(
                                  Icons.search,
                                  color: whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // NOTE: LIST CATEGORY
                        Container(
                          height: 35,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mockCategory.length,
                            itemBuilder: (context, index) {
                              return CategoryCardWidget(
                                category: mockCategory[index],
                                index: index,
                                isSelected:
                                    selectedCategory == mockCategory[index].id,
                                onTap: () {
                                  setState(() {
                                    selectedCategory = mockCategory[index].id;
                                  });
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 30),
                        // NOTE: MENTOR
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edgs),
                          child: Text(
                            "Top Mentor",
                            style: blackFontStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        // NOTE: CARD MENTOR
                        Container(
                          height: 194,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mockMentor.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 194,
                                width: 160,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(
                                  left: index == 0 ? edgs : 12,
                                  right:
                                      index == mockMentor.length - 1 ? edgs : 0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Color(0xFFF3F4F8),
                                ),
                                child: MentorCardWidgets(
                                  mentor: mockMentor[index],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 30),
                        // NOTE: MENTOR TIPS
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: edgs),
                          child: Text(
                            "Top Mentor",
                            style: blackFontStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(height: 12),
                        // NOTE: MENTOR CARD
                        Container(
                          height: 131,
                          width: double.infinity,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mockTips.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 131,
                                width: 250,
                                margin: EdgeInsets.only(
                                  left: index == 0 ? edgs : 12,
                                  right:
                                      index == mockTips.length - 1 ? edgs : 0,
                                ),
                                child: TipscardWidgets(
                                  tips: mockTips[index],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: edgs)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
