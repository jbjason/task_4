import 'package:flutter/material.dart';
import 'package:task_4/core/util/mydimens.dart';
import 'package:task_4/features/home/data/repository/home_repository.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({super.key});
  @override
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
   int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    const categories = HomeRepository.categories;
    return   Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyDimens().getTitleText('Categories'),
            SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
              children: List.generate(categories.length, (index)=>_buildCategoryChip(categories[index], index))
            ),
                  ),
          ],
      
    );
  }

   Widget _buildCategoryChip(String label,int index) {
    final isSelected = index==_selectedCategoryIndex;
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () => setState(() => _selectedCategoryIndex = index),
        child: Chip(
          label: Text(label, style: TextStyle(color: isSelected ? Colors.white : Colors.grey)),
          backgroundColor: isSelected ? Colors.red : const Color(0xFF221821),
          side: BorderSide.none,
        ),
      ),
    );
  }
}