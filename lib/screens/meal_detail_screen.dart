import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

/// Widget to build the meal details screen.
class MealDetailScreen extends StatelessWidget {
  /// Route used to navigate to this screen.
  static const routeName = '/meal-detail';

  /// Function to toggle this meal as a favorite.
  final Function toggleFavorite;

  /// Boolean for keeping track if this meal is a favorite.
  /// True if is favorite, else false.
  final Function isFavorite;

  MealDetailScreen(this.toggleFavorite, this.isFavorite);

  /// Widget to build the title section of the meal screen.
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  /// Widget to build the main body of the meal screen.
  Widget buildContainer({Widget child}) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 200,
        width: kIsWeb ? 450 : 300,
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    /// Id of meal to display, passed in my route arguments.
    final mealId = ModalRoute.of(context).settings.arguments as String;

    /// The selected Meal object to display the details of on this screen.
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${selectedMeal.title}',
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              // Image
              Container(
                margin: kIsWeb ? EdgeInsets.only(top: 10) : null,
                height: kIsWeb ? 500 : 300,
                constraints: BoxConstraints(maxWidth: 500, minWidth: 500),
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              // Ingredients Title
              buildSectionTitle(context, 'Ingredients'),
              // Ingredients List
              buildContainer(
                child: ListView.builder(
                  itemCount: selectedMeal.ingredients.length,
                  itemBuilder: (ctx, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedMeal.ingredients[index]),
                    ),
                  ),
                ),
              ),
              // Steps Title
              buildSectionTitle(context, 'Steps'),
              // Steps List
              buildContainer(
                child: ListView.builder(
                  itemCount: selectedMeal.steps.length,
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${(index + 1)}'),
                        ),
                        title: Text(
                          selectedMeal.steps[index],
                        ),
                      ),
                      !kIsWeb ? Divider() : SizedBox(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(mealId) ? Icons.favorite : Icons.favorite_border,
        ),
        onPressed: () => toggleFavorite(mealId),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.delete,
      //   ),
      //   // pass info to previous page and pop current page off stack
      //   onPressed: () => Navigator.of(context).pop(mealId),
      // ),
    );
  }
}
