import 'package:flutter/material.dart';
import 'package:recipe_challange/core/extension/widget_extension.dart';
import '../../data/models/recipe_model.dart';
import '../widgets/details_image_section.dart';
import '../widgets/section_header.dart';

class RecipeDetails extends StatefulWidget {
  const RecipeDetails({Key? key, required this.recipe}) : super(key: key);
  final RecipeModel? recipe;

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    /// device size
    final size = MediaQuery.of(context).size;

    /// variables
    final userRatings = widget.recipe?.userRatings;
    final userRatingScore = userRatings?.score;
    final ingredients = widget.recipe!.recipes;
    final instructions = widget.recipe!.instructions;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                DetailsImageSection(
                  size: size,
                  widget: widget,
                  recipe: widget.recipe!,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Recipe Main Details ( Name , Rating ) ///
                    DetailComponent(
                      size: size,
                      title: widget.recipe!.name!,
                    ),
                    DetailComponent(
                      size: size,
                      title: "${userRatingScore ?? "Has no rating yet"}",
                    ),

                    /// Recipes Section ///
                    const SectionHead(
                      title: "Recipe",
                    ),
                    ingredients!.isNotEmpty
                        ? ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemCount: ingredients.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Text(
                                  "${index + 1}. ${ingredients[index].name}");
                            },
                          )
                        : const Text("No Recipes provided!"),

                    /// Instructions Section ///
                    const SectionHead(
                      title: "Recipe instructions",
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: instructions != null
                          ? instructions
                              .map((step) =>
                                  Text("${step.position}: ${step.displayText}"))
                              .toList()
                          : [const Text("No instructions provided!")],
                    ),
                  ],
                ).paddingHorizontallyVertically(10, 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
