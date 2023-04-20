/// imports
import '../../../../core/networking/connectivity.dart';
import '../../../../core/networking/network_helper.dart';
import '../../../../core/service_locator.dart';

/// packages
import 'dart:developer';
import '../models/recipe_model.dart';

class RecipeRepository {
  final NetworkHelper _helper = sl<NetworkHelper>();
  final NetworkInfo networkInfo;
  RecipeRepository({required this.networkInfo});

  /// get recipesList from the API
  Future<List<RecipeModel>> getRecipes() async {
    List<RecipeModel>? recipes;
    try {
      final response = await _helper.get('/recipes/list');
      final jsonData = response as Map<String, dynamic>;
      final recipeData = jsonData['results'] as List<dynamic>;
      recipes = recipeData.map((data) => RecipeModel.fromJson(data)).toList();
    } catch (e, stackTrace) {
      log('Stack trace: $stackTrace');
      log('Stack trace: $e');
    }
    return recipes!;
  }
}
