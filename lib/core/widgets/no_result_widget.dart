import 'package:flutter/material.dart';
import '../constants/constans.dart';
import '../../features/recipes/data/providers/recipes_provider.dart';

class NoResultWidget extends StatelessWidget {
  const NoResultWidget({
    Key? key,
  }) : super(key: key);

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
          const Text(
            "No Results found",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Constants.primaryColor,
            ),
          ),
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
