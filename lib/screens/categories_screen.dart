import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VeganMeals'),
      ),
      body: Container(
        padding: kIsWeb ? EdgeInsets.only(top: 20) : null,
        alignment: Alignment.topCenter,
        child: Container(
          constraints: BoxConstraints(minWidth: 500, maxWidth: 800),
          child: GridView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(15),
            children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.color
                ),
              )
              .toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          ),
        ),
      ),
    );
  }
}