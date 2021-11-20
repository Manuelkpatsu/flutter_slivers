import 'package:flutter/material.dart';
import 'package:flutterslivers/view/screens/recipe_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Slivers',
      theme: ThemeData.light(),
      home: const RecipeListScreen(),
    );
  }
}
