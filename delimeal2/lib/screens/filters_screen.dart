import 'package:delimeal2/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {

  static const routeName = '/filters-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your Filters",
        ),
      ),
      drawer: MainDrawer(),
      body: Container(
        child: Center(
          child: Text(
            "Text",
          ),
        ),
      ),
    
    );
  }
}
