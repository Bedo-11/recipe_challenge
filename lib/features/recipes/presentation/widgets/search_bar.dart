import 'package:flutter/material.dart';

import '../../../../core/constants/constans.dart';
import '../../data/models/recipe_model.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key, this.recipes}) : super(key: key);
  final List<RecipeModel>? recipes;
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final focusNode = FocusNode();
  List<RecipeModel>? posts;
  List<RecipeModel>? selectedUserList;
  List<RecipeModel>? filteredRecipes = [];

  searchPosts(String text) {
    text = text.toLowerCase();
    setState(() {
      filteredRecipes = posts?.where((recipe) {
        var recipeName = recipe.name!.toLowerCase();
        return recipeName.contains(text);
      }).toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: focusNode,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: Constants.primaryColor),
                contentPadding: EdgeInsets.all(10.0),
              ),
              onChanged: (text) {
                searchPosts(text);
              },
            ),
          ),
          const Icon(
            Icons.search_rounded,
            color: Constants.primaryColor,
          )
        ],
      ),
    );
  }
}
