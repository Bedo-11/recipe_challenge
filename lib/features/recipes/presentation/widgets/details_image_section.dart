import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_challange/features/recipes/data/models/recipe_model.dart';

import '../../../../core/constants/constans.dart';
import '../../../favourites/data/providers/favourite_provider.dart';
import '../screens/recipe_details_screen.dart';

class DetailsImageSection extends StatelessWidget {
  const DetailsImageSection({
    super.key,
    required this.size,
    required this.widget,
    required this.recipe,
  });

  final Size size;
  final RecipeDetails widget;
  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    final FavoritesProvider favoritesProvider =
        Provider.of<FavoritesProvider>(context, listen: true);
    return Stack(
      children: [
        SizedBox(
          height: size.height * .5,
          width: size.width,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: Hero(
              tag: "RecipeTag${widget.recipe!.showId}",
              child: Stack(
                children: [
                  FadeInImage(
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: AssetImage("assets/rescipe.png"),
                    image: NetworkImage(
                      '${widget.recipe!.thumbnailUrl}',
                    ),
                  ),
                  Container(
                    color: Constants.primaryColor.withOpacity(0.5),
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20 * 3,
                horizontal: 20,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Constants.primaryColor,
                  ),
                  child: IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      weight: 20,
                      size: 20,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20 * 3,
                horizontal: 20,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Constants.primaryColor,
                  ),
                  child: IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    icon: Icon(
                      Icons.favorite,
                      color: favoritesProvider.isFavorite(recipe)
                          ? Colors.red
                          : Colors.white,
                      weight: 20,
                      size: 20,
                    ),
                    onPressed: () {
                      favoritesProvider.addOrRemoveFavorite(recipe);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DetailComponent extends StatelessWidget {
  const DetailComponent({
    super.key,
    required this.size,
    required this.title,
  });

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          const Icon(
            Icons.emoji_food_beverage,
            color: Constants.primaryColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Flexible(
            child: Text(
              title.toString(),
              overflow: TextOverflow.visible,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Constants.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
