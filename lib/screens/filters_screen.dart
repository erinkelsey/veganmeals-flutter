import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

/// Widget to build the filters screen, with the current
/// state of the filters [currentFilters]
class FiltersScreen extends StatefulWidget {
  /// Route name to use to navigate to this screen.
  static const routeName = '/filters';

  /// Function used to save the filters' state
  final Function saveFilters;

  /// Dictionary of current filter values.
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutenFree = false;
  var _sugarFree = false;
  var _nutFree = false;
  var _lowCal = false;

  @override
  initState() {
    _glutenFree = widget.currentFilters['gluten'];
    _sugarFree = widget.currentFilters['sugar'];
    _nutFree = widget.currentFilters['nut'];
    _lowCal = widget.currentFilters['lowCal'];
    super.initState();
  }

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function updateValue) {
    return SwitchListTile(
      title: Text(title),
      value: currentValue,
      subtitle: Text(description),
      onChanged: (newValue) {
        updateValue(newValue);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filters'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'gluten': _glutenFree,
                'sugar': _sugarFree,
                'nut': _nutFree,
                'lowCal': _lowCal
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 500, minWidth: 500),
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal preferences',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  // Gluten Free
                  _buildSwitchListTile(
                      'Gluten Free',
                      'Only include gluten free meals',
                      _glutenFree, (newValue) {
                    setState(() {
                      _glutenFree = newValue;
                    });
                  }),
                  // Sugar Free
                  _buildSwitchListTile(
                      'Sugar Free', 'Only include sugar free meals', _sugarFree,
                      (newValue) {
                    setState(() {
                      _sugarFree = newValue;
                    });
                  }),
                  // Nut Free
                  _buildSwitchListTile(
                      'Nut Free', 'Only include nut free meals', _nutFree,
                      (newValue) {
                    setState(() {
                      _nutFree = newValue;
                    });
                  }),
                  // Low Calorie
                  _buildSwitchListTile(
                      'Low Calorie', 'Only include low calorie meals', _lowCal,
                      (newValue) {
                    setState(() {
                      _lowCal = newValue;
                    });
                  }),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
