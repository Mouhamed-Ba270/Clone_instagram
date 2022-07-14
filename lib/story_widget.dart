import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key}) : super(key: key);

  final List storyItems = [
    {
      "pseudo": "painStop",
      "photo": "assets/images/photo/photo-1.jpeg",
    },
    {
      "pseudo": "iss826",
      "photo": "assets/images/photo/photo-2.jpeg",
    },
    {
      "pseudo": "dramaLove",
      "photo": "assets/images/photo/photo-3.jpeg",
    },
    {
      "pseudo": "heiseinberg",
      "photo": "assets/images/photo/photo-4.jpeg",
    },
    {
      "pseudo": "moodPretty",
      "photo": "assets/images/photo/photo-5.jpeg",
    },
    {
      "pseudo": "callumBoy",
      "photo": "assets/images/photo/photo-6.jpeg",
    },
    {
      "pseudo": "painBoy",
      "photo": "assets/images/photo/photo-7.jpeg",
    },
    {
      "pseudo": "bentley",
      "photo": "assets/images/photo/photo-8.jpeg",
    },
    {
      "pseudo": "workDream",
      "photo": "assets/images/photo/photo-9.jpeg",
    },
    {
      "pseudo": "allStorm",
      "photo": "assets/images/photo/photo-10.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/story-circle.png',
                      height: 70,
                    ),
                    Image.asset(
                      'assets/images/story-circle.png',
                      height: 68,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage(story['photo']),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
