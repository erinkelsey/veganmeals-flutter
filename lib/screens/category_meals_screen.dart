import 'package:flutter/material.dart';

import '../widgets/meal_item.dart';
import '../models/meal.dart';

/// Widget to build the screen that shows the list of
/// meals in each category.
///
/// Each meal in the list is a MealItem object.
class CategoryMealsScreen extends StatefulWidget {
  /// Route used to navigate to the screen.
  static const routeName = '/category-meals';

  /// List of the meals in this category.
  final List<Meal> availableMeals;

  CategoryMealsScreen(this.availableMeals);

  @override
  _CategoryMealsScreenState createState() => _CategoryMealsScreenState();
}

class _CategoryMealsScreenState extends State<CategoryMealsScreen> {
  /// The title of this category.
  String categoryTitle;

  /// List of meals to display in this category.
  List<Meal> displayedMeals;

  /// Called when widget is intialized to set state.
  /// Cannot user initState because context is not yet available
  /// to get the arguments from the route.
  @override
  void didChangeDependencies() {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    displayedMeals = widget.availableMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    super.didChangeDependencies();
  }

  // void _removeMeal(String mealId){
  //   setState(() {
  //     displayedMeals.removeWhere((meal) => meal.id == mealId);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(minWidth: 400, maxWidth: 500),
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              return MealItem(
                id: displayedMeals[index].id,
                title: displayedMeals[index].title,
                imageUrl: displayedMeals[index].imageUrl,
                duration: displayedMeals[index].duration,
                affordability: displayedMeals[index].affordability,
                complexity: displayedMeals[index].complexity,
                // removeItem: _removeMeal,
              );
            },
            itemCount: displayedMeals.length,
          ),
        ),
      ),
    );
  }
}
