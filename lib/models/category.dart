import 'package:flutter/material.dart';

/// Model for a category.
class Category {
  /// The id for this category.
  final String id;

  /// The title for this category.
  final String title;

  /// The color for this category.
  final Color color;

  const Category(
      {@required this.id, @required this.title, this.color = Colors.pink});
}
