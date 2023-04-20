import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_challange/features/recipes/data/models/recipe_model.dart';

import '../../../../core/constants/constans.dart';
import '../screens/recipe_details_screen.dart';

class RecipeCard extends StatelessWidget {
  final RecipeModel recipeModel;
  const RecipeCard({
    Key? key,
    required this.recipeModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => RecipeDetails(recipe: recipeModel)),
        );
      },
      child: SizedBox(
        height: size.height * 0.3,
        child: Card(
          // color: Colors.white,
          shadowColor: const Color(0xfff8f9ff),
          elevation: 6,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Hero(
                  tag: "RecipeTag${recipeModel.showId}",
                  child: Stack(
                    children: [
                      FadeInImage(
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: size.height * 0.2,
                        placeholder: const AssetImage("assets/rescipe.png"),
                        image: NetworkImage(
                          '${recipeModel.thumbnailUrl}',
                        ),
                      ),
                      Positioned.fill(
                        child: Container(
                          color: Constants.primaryColor.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  recipeModel.name!,
                  style: GoogleFonts.dynaPuff(
                    textStyle: const TextStyle(
                      color: Constants.primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
