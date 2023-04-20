import '../models/recipe_model.dart';

class RecipesCache {
  List<RecipeModel>? recipes;
  List<RecipeModel>? filteredRecipes;

  void setRecipes(List<RecipeModel>? recipes) {
    this.recipes = recipes;
    this.filteredRecipes = recipes;
  }
}
