import 'package:flutter/material.dart';
class BigCard extends StatelessWidget{
 final String name;
 final String calification;
 final String imageURL;

  const BigCard ({Key? key, required this.name, required this.calification, required this.imageURL}): super (key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(alignment: Alignment.topLeft,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),textAlign: TextAlign.right),
            Text("Enfoque: Gestalt humanista",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
              SizedBox(height: 5),
              ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image(image: NetworkImage(imageURL), 
            width: 300)),
          SizedBox(height: 5),
          SizedBox(
            width: 300,
            child: Row(
              children: [
                Text("$calification",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.blue)),
                SizedBox(width: 10,),
                const Icon(
                      Icons.face,
                      color: Colors.amber,
                      size: 30,
                    ),const Icon(
                      Icons.face,
                      color: Colors.amber,
                      size: 30,
                    ),
                    const Icon(
                      Icons.face,
                      color: Colors.amber,
                      size: 30,
                    ),
                    const Icon(
                      Icons.face,
                      color: Colors.amber,
                      size: 30,
                    ),
                    const Icon(
                      Icons.face,
                      color: Colors.amber,
                      size: 30,
                    ),
              ],
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}