import 'package:flutter/material.dart';

class HomeHelloText extends StatelessWidget {
  const HomeHelloText({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello JB',
              style: TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
            ),
            Text(
              'Let\'s watch today',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],),
         CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://picsum.photos/200/300?random=10')
            ),
      ],
    );
    
    
  }
}