import 'package:flutter/material.dart';
import 'package:recipe_challange/library.dart';
import '../constants/constans.dart';
import '../../features/recipes/data/providers/recipes_provider.dart';

class NoResultWidget extends StatelessWidget {
  const NoResultWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/search.png'),
          const SizedBox(
            height: 10,
          ),
          Text(title,
              style: GoogleFonts.dynaPuff(
                textStyle: const TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: Constants.primaryColor,
                ),
              )),
        ],
      ),
    );
  }
}

class NoConnectionWidget extends StatelessWidget {
  const NoConnectionWidget({
    super.key,
    required this.recipesProvider,
  });

  final RecipesProvider recipesProvider;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("No Internet Connection"),
        TextButton(
            onPressed: () => recipesProvider.getRecipes(),
            child: const Text("Try Again"))
      ],
    ));
  }
}
