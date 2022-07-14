import 'package:flutter/material.dart';

class PostWigdet extends StatelessWidget {
  PostWigdet({Key? key}) : super(key: key);

  final List postItems = [
    {
      "pseudo": "painStop",
      "photo": "assets/images/photo/photo-1.jpeg",
      "photoProfil": "assets/images/profil/photo-1.webp",
      "description": "What do you want to see ?"
    },
    {
      "pseudo": "iss826",
      "photo": "assets/images/photo/photo-2.jpeg",
      "photoProfil": "assets/images/profil/photo-2.jpeg",
      "description": "What do you want to see ?"
    },
    {
      "pseudo": "dramaLove",
      "photo": "assets/images/photo/photo-3.jpeg",
      "photoProfil": "assets/images/profil/photo-3.jpeg",
      "description": "What do you want to see ?"
    },
    {
      "pseudo": "heiseinberg",
      "photo": "assets/images/photo/photo-4.jpeg",
      "photoProfil": "assets/images/profil/photo-4.webp",
      "description": "What do you want to see ?"
    },
    {
      "pseudo": "moodPretty",
      "photo": "assets/images/photo/photo-5.jpeg",
      "photoProfil": "assets/images/profil/photo-5.jpeg",
      "description": "What do you want to see ?"
    },
    {
      "pseudo": "callumBoy",
      "photo": "assets/images/photo/photo-6.jpeg",
      "photoProfil": "assets/images/profil/photo-6.webp",
      "description": "What do you want to see ?"
    },
    {
      "pseudo": "painBoy",
      "photo": "assets/images/photo/photo-7.jpeg",
      "photoProfil": "assets/images/profil/photo-1.webp",
      "description": "What do you want to see ?"
    },
    {
      "pseudo": "bentley",
      "photo": "assets/images/photo/photo-8.jpeg",
      "photoProfil": "assets/images/profil/photo-2.jpeg",
      "description": "What do you want to see ?"
    },
    {
      "pseudo": "workDream",
      "photo": "assets/images/photo/photo-9.jpeg",
      "photoProfil": "assets/images/profil/photo-3.jpeg",
      "description": "What do you want to see ?"
    },
    {
      "pseudo": "allStorm",
      "photo": "assets/images/photo/photo-10.jpeg",
      "photoProfil": "assets/images/profil/photo-4.webp",
      "description": "Want to see the moon !"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              //color: Colors.grey,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post['photoProfil']),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    post['pseudo'],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5),
                  Image.asset(
                    'assets/images/verification-badge.png',
                    height: 13,
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post['photo']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.send_outlined),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_outline),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(post['photoProfil']),
                  ),
                  const SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Aime par ',
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: post['pseudo'],
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const TextSpan(
                          text: ' et ',
                        ),
                        const TextSpan(
                          text: ' 123 autres personnes',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'See more',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'See 35 comments',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '16 mins ago ~ ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade400),
                      ),
                      Text(
                        ' afficher la traduction',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
