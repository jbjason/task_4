import 'package:flutter/material.dart';
import 'package:task_4/config/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:task_4/features/home/presentation/screens/home_screen.dart';
import 'package:task_4/features/home/providers/home_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(providers:  [
      ChangeNotifierProvider(create: (_) => HomeProvider()),
    ],
    child:  MaterialApp(
      title: 'Task 4',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      home: const HomeScreen(),
    ),);
    
   
  }
}
