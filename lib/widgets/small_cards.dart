import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget{

 final String name;
 final String imageURL;

  const SmallCard ({Key? key, required this.name, required this.imageURL}): super (key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(alignment: Alignment.topRight,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image(image: NetworkImage(imageURL), 
            width: 150,
            height: 150,)),
          SizedBox(height: 5),
          SizedBox(
            width: 150,
            child: Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),textAlign: TextAlign.left)),
          
            ],
          ),
        ),
      ),
    );
  }
}