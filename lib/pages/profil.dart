import 'package:flutter/material.dart';
import 'package:instagram/widgets/profile_picture.dart';
import 'package:instagram/widgets/info_item.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            Text(
              "Profile",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ],
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.menu,
        //       color: Colors.white,
        //     ),
        //   )
        // ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 180,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(250 / 20),
                        color: Colors.grey[200]),
                  ),
                  ProfilePicture(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlineButton(
              onPressed: () => null,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.person)),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlineButton(
              onPressed: () => null,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.assessment)),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Transkrip Nilai",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlineButton(
              onPressed: () => null,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.my_library_books_rounded)),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Administrasi",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlineButton(
              onPressed: () => null,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.shield_rounded)),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Keamanan Akun",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlineButton(
              onPressed: () => null,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Icon(Icons.settings)),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Pengaturan",
                        style: TextStyle(fontSize: 15),
                        textAlign: TextAlign.center,
                      )),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.logout),
                  label: Text("Log out"))),
          SizedBox(
            height: 5,
          ),
          SizedBox(height: 15),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_outline), label: "Reels"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}

class StoryItem extends StatelessWidget {
  StoryItem(this.title);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey),
              ),
              Container(
                width: 77,
                height: 77,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey,
                    border: Border.all(width: 5, color: Colors.white),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://picsum.photos/seed/picsum/200/300"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(title)
        ],
      ),
    );
  }
}
