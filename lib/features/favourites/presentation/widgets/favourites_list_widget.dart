import 'package:flutter/material.dart';
import 'package:recipe_challange/core/extension/widget_extension.dart';
import '../../../recipes/presentation/widgets/recipe_card.dart';
import '../../data/providers/favourite_provider.dart';

class FavouritesListWidget extends StatelessWidget {
  const FavouritesListWidget({
    super.key,
    required this.favoritesProvider,
  });

  final FavoritesProvider favoritesProvider;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: favoritesProvider.getFavoritesList.length,
      separatorBuilder: (BuildContext context, int index) {
        return Container();
      },
      itemBuilder: (BuildContext context, int index) {
        return RecipeCard(
          recipeModel: favoritesProvider.getFavoritesList[index],
        ).paddingHorizontallyVertically(15, 5);
      },
    );
  }
}
