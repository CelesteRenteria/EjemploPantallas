import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String imageURL;
  const DetailsScreen({Key? key, required this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Colors.blue,
                  size: 35,
                ),
                Spacer(),
                const Icon(
                  Icons.share,
                  color: Colors.blue,
                  size: 35,
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image(
                      image: NetworkImage(imageURL),
                      width: 150,
                      height: 150,
                    )),
                Column(
                  children: [
                    Text(
                      '''Juan
Figo Bárcenas''',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Text("Enfoque: Cognitivo-Conductual",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.blue)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
