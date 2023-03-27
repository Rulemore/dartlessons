// // ignore: must_be_immutable
// class HomeRoute extends StatelessWidget {
//   const HomeRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold();
//   }
// }

// class QuoteRoute extends StatelessWidget {
//   const QuoteRoute({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Careby'),
//       ),
//       body: Center(
//         child: RichText(
//           text: TextSpan(
//             children: <TextSpan>[
//               TextSpan(
//                   text: 'ТУТ ТЕКСТИК.',
//                   style: GoogleFonts.quicksand(
//                       textStyle: const TextStyle(fontWeight: FontWeight.w300))),
//               const TextSpan(text: 'ТУТ ТОЖЕ')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class RestRoute extends StatelessWidget {
//   const RestRoute({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//       child: Stack(
//         children: const <Widget>[
//           Text('set an alarm',
//               style:
//                   TextStyle(fontSize: 18, color: Color.fromARGB(40, 0, 0, 0))),
//           Text('start sleeping',
//               style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.bold,
//                   fontStyle: FontStyle.italic))
//         ],
//       ),
//     ));
//   }
// }

// class ProfileRoute extends StatelessWidget {
//   const ProfileRoute({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//         backgroundColor: Colors.green,
//       ),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({super.key});

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int waterfilled = 0;
//   final totalwater = 2000;

//   void addwater(int a) {
//     waterfilled += a;
//   }

//   void clearwater() {
//     waterfilled = 0;
//   }

//   static const TextStyle optionStyle = TextStyle(
//       fontSize: 40, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Aqua balance',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Quote',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: Rest',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 3: Supply',
//       style: optionStyle,
//     ),
//   ];
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     if (_selectedIndex == index) return;
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions[_selectedIndex],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.water_drop),
//             label: 'Aqua balance',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.format_quote),
//             label: 'Quote',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.bedtime),
//             label: 'Rest',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.restaurant_menu),
//             label: 'Supply',
//           ),
//         ],
//         backgroundColor: const Color.fromARGB(255, 225, 196, 196),
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
