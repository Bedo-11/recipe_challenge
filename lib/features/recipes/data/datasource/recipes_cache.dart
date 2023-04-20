import '../models/recipe_model.dart';

/// to cache the data
class RecipesCache {
  List<RecipeModel>? recipes;
  List<RecipeModel>? filteredRecipes;

  void setRecipes(List<RecipeModel>? recipes) {
    this.recipes = recipes;
    filteredRecipes = recipes;
  }
}
