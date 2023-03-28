// ignore_for_file: prefer_final_fields, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hw5_water_drinking_app/app_colors.dart';

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

class _HomeWidgetState extends State<HomeWidget> {
  int _selectedTab = 0;
  int waterfilled = 0;
  final totalwater = 2000;
  void addwater(int a) {
    setState(() {
      waterfilled += a;
    });
  }

  void clearwater() {
    setState(() {
      waterfilled += 0;
    });
  }

  BuildContext getContext(BuildContext context) {
    return context;
  }

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$waterfilled',
                style: GoogleFonts.quicksand(
                  fontSize: 70,
                ),
              ),
              Text(
                '/$totalwater',
                style: GoogleFonts.quicksand(
                  fontSize: 30,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.mainLightPink,
          child: Icon(Icons.add,
              size: 35, color: Color.fromARGB(255, 118, 98, 98)),
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40),
                ),
              ),
              isDismissible: true,
              context: context,
              builder: (BuildContext context) {
                return Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    GridView.count(
                      crossAxisCount: 3,
                      children: <Widget>[
                        OutlinedButton(
                          onPressed: () {
                            addwater(100);
                          },
                          child: Text('100 ml'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            addwater(150);
                          },
                          child: Text('150 ml'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            addwater(200);
                          },
                          child: Text('200 ml'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            addwater(250);
                          },
                          child: Text('250 ml'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            addwater(300);
                          },
                          child: Text('300 ml'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            addwater(350);
                          },
                          child: Text('350 ml'),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            addwater(500);
                          },
                          child: Text('500 ml'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Own volume'),
                        ),
                      ],
                    ),
                    OutlinedButton(
                      onPressed: () {
                        //Confirming add selected volume
                        Navigator.pop(context);
                      },
                      child: Text('Add'),
                    )
                  ],
                );
              },
            );
          },
        ),
        // body: ,
      ),
      Scaffold(
        body: Text('Главная'),
      ),
      Text(
        'Фильмы',
      ),
      Text(
        'Сериалы',
      ),
    ];

    return Scaffold(
      body: Center(
        child: widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
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
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Supply',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
