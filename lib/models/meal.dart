import 'package:flutter/foundation.dart';

/// Options for Complexity
enum Complexity {
  Simple,
  Challenging,
  Hard,
}

/// Options for Affordability
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

/// Model for a meal.
class Meal {
  /// The id for this meal.
  final String id;

  /// List of Category object ids linked for this meal.
  final List<String> categories;

  /// The title for this meal.
  final String title;

  /// The url for the image for this meal.
  final String imageUrl;

  /// List of ingredients for this meal.
  final List<String> ingredients;

  /// List of steps/recipe for this meal.
  final List<String> steps;

  /// Estimate of how long this meal will take to prepare.
  final int duration;

  /// The Complexity of this meal.
  final Complexity complexity;

  /// The Affordability of this meal.
  final Affordability affordability;

  /// Boolean for assigning this meal as gluten free.
  final bool isGlutenFree;

  /// Boolean for assigning this meal as sugar free.
  final bool isSugarFree;

  /// Boolean for assigning this meal as nut free.
  final bool isNutFree;

  /// Boolean for assigning this meal as low calorie.
  final bool isLowCal;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isSugarFree,
    @required this.isNutFree,
    @required this.isLowCal,
  });
}
