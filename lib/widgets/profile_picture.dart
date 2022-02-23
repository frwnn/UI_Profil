import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // Container(
            //   width: 120,
            //   height: 120,
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(
            //         begin: Alignment.topCenter,
            //         end: Alignment.bottomCenter,
            //         colors: [Colors.red, Colors.amber]),
            //     borderRadius: BorderRadius.circular(60),
            //   ),
            // ),
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://picsum.photos/seed/picsum/200/300"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(60),
                color: Colors.grey,
                border: Border.all(width: 5, color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(
          "Fajar Irawan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("frwnn10@gmail.com")
      ],
    );
  }
}
