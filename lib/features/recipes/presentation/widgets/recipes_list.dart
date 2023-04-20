import 'package:flutter/material.dart';
import 'package:recipe_challange/features/recipes/presentation/widgets/recipe_card.dart';
import '../../data/models/recipe_model.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.size,
    required this.recipes,
  });

  final Size size;
  final List<RecipeModel>? recipes;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: recipes!.length,
      separatorBuilder: (BuildContext context, int index) {
        return Container();
      },
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: RecipeCard(
            recipeModel: recipes![index],
          ),
        );
      },
    );
  }
}
