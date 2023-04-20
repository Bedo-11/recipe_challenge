import 'dart:convert';
import 'package:flutter/material.dart';
import '../../../../core/constants/constans.dart';
import '../../../../core/shared_prefs.dart';
import '../../../recipes/data/models/recipe_model.dart';

enum EventLoadingStatus { notLoaded, loading, loaded }

class FavoritesProvider with ChangeNotifier {
  List<RecipeModel> _favoritesList = [];
  EventLoadingStatus _eventLoadingStatus = EventLoadingStatus.notLoaded;

  EventLoadingStatus get status => _eventLoadingStatus;

  List<RecipeModel> get getFavoritesList => _favoritesList;

  Future<void> loadFavoritesList() async {
    _eventLoadingStatus = EventLoadingStatus.loading;
    notifyListeners();

    final jsonString = Prefs.getString(key: Constants.favoriteModelStorage);
    if (jsonString != null) {
      final jsonList = jsonDecode(jsonString) as List<dynamic>;
      _favoritesList = jsonList.map((e) => RecipeModel.fromJson(e)).toList();
    }

    _eventLoadingStatus = EventLoadingStatus.loaded;
    notifyListeners();
  }

  Future<void> addOrRemoveFavorite(RecipeModel recipe) async {
    if (isFavorite(recipe)) {
      _favoritesList.removeWhere((element) => element.id == recipe.id!);
    } else {
      _favoritesList.add(recipe);
    }
    await Prefs.setString(
      Constants.favoriteModelStorage,
      json.encode(_favoritesList),
    );
    notifyListeners();
  }

  bool isFavorite(RecipeModel recipe) {
    return _favoritesList.any((element) => element.id == recipe.id!);
  }
}
