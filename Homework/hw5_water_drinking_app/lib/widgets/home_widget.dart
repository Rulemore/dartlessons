import 'package:flutter/material.dart';
import 'package:hw5_water_drinking_app/main.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeWidgetState createState() => _HomeWidgetState();
}

// class _HomeWidgetState extends State<HomeWidget> {
//

//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Aqua balance',
//     ),
//     Text(
//       'Index 1: Quote',
//     ),
//     Text(
//       'Index 2: Rest',
//     ),
//     Text(
//       'Index 3: Supply',
//     ),
//   ];
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     if (_selectedIndex == index) return;
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   void toProfile() => Navigator.of(context).pushReplacementNamed('/profile');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: IconButton(
//           onPressed: toProfile,
//           icon: const Icon(Icons.person),
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
// BottomNavigationBarItem(
//   icon: Icon(Icons.water_drop),
//   label: 'Aqua balance',
// ),
// BottomNavigationBarItem(
//   icon: Icon(Icons.format_quote),
//   label: 'Quote',
// ),
// BottomNavigationBarItem(
//   icon: Icon(Icons.bedtime),
//   label: 'Rest',
// ),
// BottomNavigationBarItem(
//   icon: Icon(Icons.restaurant_menu),
//   label: 'Supply',
// ),
//         ],
//         // backgroundColor: AppColors.mainLightPink,
//         // selectedItemColor: Colors.white,
//         // unselectedItemColor: Colors.grey,
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
class WaterCounter {
  int waterfilled = 0;
  final totalwater = 2000;
  void addwater(int a) {
    waterfilled += a;
  }

  void clearwater() {
    waterfilled = 0;
  }
}

class _HomeWidgetState extends State<HomeWidget> {
  int _selectedTab = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Center(child: FloatingActionButton(onPressed: () {
      showModalBottomSheet(context: context, builder: (BuildContext(context)) {
        return SizedBox(
          height: 400, child: Column(
            children: <Widget>[OutlinedButton(onPressed: () {}, child: const Text('100ml'),),],),),
    };}, child: Icon(Icons.add),),),
    Text(
      'Aqua balance ',
    ),
    Text(
      'Фильмы',
    ),
    Text(
      'Сериалы',
    ),
  ];

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB'),
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.water_drop),
            label: 'Aqua balance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_quote),
            label: 'Quote',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bedtime),
            label: 'Rest',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
