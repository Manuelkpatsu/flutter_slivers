import 'package:flutter/material.dart';
import 'package:flutterslivers/constants/app_image_paths.dart';
import 'package:flutterslivers/repository/recipe_repository.dart';
import 'package:flutterslivers/view/widgets/app_bar_widget.dart';
import 'package:flutterslivers/view/widgets/footer_widget.dart';
import 'package:flutterslivers/view/widgets/recipe_item_widget.dart';

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recipes = RecipeRepository.getRecipes();

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const AppBarWidget(
            text: 'Reciperlich',
            imagePath: AppImagePaths.mainImage,
            centerTitle: true,
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverFixedExtentList(
              itemExtent: 110,
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: RecipeItem(recipes[index])),
                childCount: recipes.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: FooterWidget(),
          ),
        ],
      ),
    );
  }
}
