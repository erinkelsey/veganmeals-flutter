import 'package:flutter/material.dart';
import 'package:meals_app/screens/favorites_screen.dart';
import '../screens/categories_screen.dart';

/// Widget for building tabs to dispaly underneath
/// the appbar of in app.
class TopTabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // top tab bar
    return DefaultTabController(
      length: 2,
      // initialIndex: 1, // initial tab screen
      child: Scaffold(
        appBar: AppBar(
          title: Text('VeganMeals'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScreen(),
            // FavoritesScreen(),
          ],
        ),
      ),
    );
  }
}
