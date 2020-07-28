import 'package:flutter/material.dart';

import '../screens/category_meals_screen.dart';

/// Widget for building a category item.
///
/// Returns an InkWell dispalying the category details.
/// Will navigate to the category's meals page when pressed.
class CategoryItem extends StatelessWidget {
  /// The id for this category.
  final String id;

  /// The title for this category.
  final String title;

  /// The color to display as a background
  /// for this category in grid.
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  /// Method to push the selected category meals screen
  /// onto navigation stack when this category item
  /// is pressed by user.
  void _selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryMealsScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.5), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
