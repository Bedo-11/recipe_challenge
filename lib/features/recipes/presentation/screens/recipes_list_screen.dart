import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:recipe_challange/core/enums/request_status.dart';
import 'package:recipe_challange/core/shimmer_widget.dart';
import 'package:recipe_challange/features/recipes/data/models/recipe_model.dart';
import 'package:recipe_challange/features/recipes/data/repositories/recipe_service.dart';
import 'package:recipe_challange/features/recipes/data/providers/recipes_provider.dart';
import 'package:recipe_challange/features/recipes/presentation/widgets/no_result_widget.dart';
import 'package:recipe_challange/features/recipes/presentation/widgets/recipes_list.dart';

import '../widgets/home_header.dart';

final sl = GetIt.instance;

class RecipesListScreen extends StatefulWidget {
  const RecipesListScreen({Key? key}) : super(key: key);

  @override
  State<RecipesListScreen> createState() => _RecipesListScreenState();
}

class _RecipesListScreenState extends State<RecipesListScreen> {
  RecipeRepository recipeService = RecipeRepository(networkInfo: sl());
  List<RecipeModel>? recipes;
  final focusNode = FocusNode();
  List<RecipeModel>? filteredRecipes = [];

  searchPosts(String text) {
    setState(() {
      if (text.isEmpty) {
        // If search keyword is empty
        filteredRecipes = recipes; // Return full list of recipes
      } else {
        text = text.toLowerCase();
        filteredRecipes = recipes?.where((recipe) {
          var recipeName = recipe.name!.toLowerCase();
          return recipeName.contains(text);
        }).toList();
      }
    });
  }

  getRecipesData() async {
    await Provider.of<RecipesProvider>(context, listen: false).getRecipes();
    // ignore: use_build_context_synchronously
    recipes = context.read<RecipesProvider>().recipes;
    filteredRecipes = recipes;
  }

  @override
  void initState() {
    getRecipesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final RecipesProvider recipesProvider =
        Provider.of<RecipesProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfff7f7f7),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeHeaderWidget(
            size: size,
            focusNode: focusNode,
            onChanged: searchPosts,
          ),
          Expanded(child: _buildRecipeWidget(recipesProvider, size))
        ],
      ),
    );
  }

  _buildRecipeWidget(RecipesProvider recipesProvider, Size size) {
    switch (recipesProvider.requestStatus) {
      case RequestStatus.isLoading:
        // return const Center(child: CircularProgressIndicator());
        return const ShimmerList();
      case RequestStatus.error:
        return const Center(child: Text("ERROR"));
      case RequestStatus.noInternet:
        return NoConnectionWidget(
          recipesProvider: recipesProvider,
        );
      default:
        if (filteredRecipes!.isEmpty) {
          return const NoResultWidget();
        } else {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeBody(
                  size: size,
                  recipes: filteredRecipes,
                ),
              ],
            ),
          );
        }
    }
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
