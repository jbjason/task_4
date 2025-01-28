import 'package:flutter/material.dart';
import 'package:task_4/features/home/presentation/widgets/home_categories.dart';
import 'package:task_4/features/home/presentation/widgets/home_continue_list.dart';
import 'package:task_4/features/home/presentation/widgets/home_hello_text.dart';
import 'package:task_4/features/home/presentation/widgets/home_navbar.dart';
import 'package:task_4/features/home/presentation/widgets/home_recommended_list.dart';
import 'package:task_4/features/home/presentation/widgets/home_search_field.dart';
import 'package:task_4/features/home/presentation/widgets/home_trending_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeHelloText(),
                const SizedBox(height: 20),
                // Search Bar
                const HomeSearchField(),
                const SizedBox(height: 20),
                // Categories
                const HomeCategories(),
                const SizedBox(height: 10),
                // Featured
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://picsum.photos/500/200?random=12', 
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                // Trending Movies
                const HomeTrendingList(),
                const SizedBox(height: 20),
                // Continue Watching
              const HomeContinueList(),
                const SizedBox(height: 20),
                // Recommended for You
               const HomeRecommendedList(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  const HomeNavBar()
    );
  }
}

