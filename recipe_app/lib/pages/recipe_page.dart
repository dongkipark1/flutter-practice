import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/components/recipe_list_item.dart';
import 'package:recipe_app/components/recipe_menu.dart';
import 'package:recipe_app/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("LE SSERAFIM1", "Unforgiven"),
            RecipeListItem("LE SSERAFIM2", "AntiFragile"),
            RecipeListItem("LE SSERAFIM3", "Fearless"),
          ],
        ),
      ),
    );
  }

  AppBar _buildRecipeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        Icon(
          CupertinoIcons.search_circle,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.heart_circle_fill,
          color: Colors.redAccent,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}
