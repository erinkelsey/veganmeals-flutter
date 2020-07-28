import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

/// Widget for building the screen that displays the
/// user's [favoriteMeals]
class FavoritesScreen extends StatelessWidget {
  /// List of the user's favorite meals.
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('No favorites. Try adding some!'),
      );
    } else {
      return Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 500, minWidth: 500),
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return MealItem(
                  id: favoriteMeals[index].id,
                  title: favoriteMeals[index].title,
                  imageUrl: favoriteMeals[index].imageUrl,
                  duration: favoriteMeals[index].duration,
                  affordability: favoriteMeals[index].affordability,
                  complexity: favoriteMeals[index].complexity);
            },
            itemCount: favoriteMeals.length,
          ),
        ),
      );
    }
  }
}
