import 'package:flutter/material.dart';
import 'story_widget.dart';
import 'post_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
            color: Colors.black,
          ),
          title: Image.asset(
            'assets/images/instagram-logo.png',
            height: 60,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.send_outlined),
              color: Colors.black,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StoryWidget(),
              PostWigdet(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey.shade700,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined), label: 'Add Photo'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profil'),
          ],
        ),
      ),
    );
  }
}
