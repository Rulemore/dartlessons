import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'widgets/home_widget.dart';
import 'widgets/profile_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainLightPink,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color.fromARGB(255, 118, 98, 98),
        ),
      ),
      initialRoute: '/home',
      routes: {
        // ignore: prefer_const_constructors
        '/home': (context) => HomeWidget(),
        // ignore: prefer_const_constructors
        '/profile': (context) => ProfileWidget(),
      },
    );
  }
}

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
