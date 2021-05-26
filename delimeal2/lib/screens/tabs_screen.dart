import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorites_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {

  @override 
  _TabsScreenState createState() => _TabsScreenState();
}
class _TabsScreenState extends State<TabsScreen>{

  List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavoritesScreen(), 'title': 'Your Favorites'},
    
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:Text(
             _pages[_selectedPageIndex]['title'],
          ),
        ),
        drawer: MainDrawer(),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          currentIndex: _selectedPageIndex,
          type: BottomNavigationBarType.shifting,
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category, ),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Favorites'
            ),
          ],
        ),
    );
  }
}

// class _TabsScreenState extends State<TabsScreen>{

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       initialIndex: 0,
//       child: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title:Text(
//              "Meals",
//           ),
//           bottom: TabBar(
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.category), 
//                 text: "Categories",
//               ),
//               Tab(
//                 icon: Icon(Icons.star), 
//                 text: "Favorites",
//               ),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             CategoriesScreen(),
//             FavoritesScreen()
//           ],
//         ),
//       ),
//     );
//   }
// }