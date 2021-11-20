import 'package:flutter/material.dart';
import 'package:flutterslivers/models/recipe_model.dart';

class RecipeScreen extends StatelessWidget {
  final RecipeModel recipe;

  const RecipeScreen(this.recipe, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Recipe Screen'),
      ),
    );
  }
}
