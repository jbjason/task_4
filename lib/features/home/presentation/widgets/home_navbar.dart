import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});

  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  int _selectedNavIndex = 0;
  @override
  Widget build(BuildContext context) {
  return  Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xFF1C212A),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _navItem(0, Icons.home),
            _navItem(1, Icons.tv_outlined),
            _navItem(2, Icons.download_outlined),
            _navItem(3, Icons.person_outline),
          ],
        ),
      ),
    );
  }

  Widget _navItem(int index, IconData icon) => InkWell(
        onTap: () => setState(() => _selectedNavIndex = index),
        child: 
        Icon(icon,color: index == _selectedNavIndex ? Colors.red:Colors.grey,)
     
      );
}