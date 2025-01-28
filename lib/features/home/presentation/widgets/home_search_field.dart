import 'package:flutter/material.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                   
                ),),),
                SizedBox(width: 10),
               Icon(Icons.settings, color: Colors.white),
                
      ],
    );
  }
}