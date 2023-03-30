import 'package:flutter/material.dart';
import 'package:flutter_app/utils/theme.dart';
import 'package:flutter_app/utils/const.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: newTheme(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final tabs = [
    Container(
      margin: const EdgeInsets.only(left: 150.0, top: 250.0),
      child: Text.rich(TextSpan(children: <TextSpan>[
        TextSpan(
            text: '0',
            style: TextStyle(
              fontSize: 60,
              color: textColor,
            )),
        TextSpan(
            text: '/2000', style: TextStyle(fontSize: 25, color: iconColor))
      ])),
    ),
    Container(
      margin: const EdgeInsets.only(left: 40.0, top: 220.0),
      child: const Text(
        'Тут текстикr..',
        style: TextStyle(fontSize: 30),
      ),
    ),
    Align(
      child: SizedBox(
        width: 300,
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(60.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: mainColor,
              boxShadow: [
                BoxShadow(
                    color: textColor,
                    offset: const Offset(3.0, 6.0),
                    blurRadius: 10.0),
              ],
            ),
            child: const Center(
              child: Text(
                '9:00',
                style: TextStyle(
                    fontSize: 80,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ),
        ),
      ),
      /*child: Text(
        'Rest',
        style: TextStyle(fontSize: 30),
      ),*/
    ),
    const Center(
      child: Text(
        'Supply',
        style: TextStyle(fontSize: 30),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Tab(
            icon: Icon(
              Icons.person,
              size: 45,
            ),
          ),
          Tab(
              icon: Icon(
            Icons.person,
            size: 45,
            color: Colors.transparent,
          )),
        ],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(Icons.local_drink),
            label: 'Aqua Balance',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.format_quote),
            label: 'Quote',
          ),
          BottomNavigationBarItem(
            icon: Transform.rotate(
              angle: 150 * math.pi / 180,
              child: const Icon(
                Icons.brightness_2_rounded,
              ),
            ),
            label: 'Rest',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            label: 'Supply',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  children: [
                    Row(
                      children: const [Text('')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        ElevatedButton(onPressed: null, child: Text('100ml')),
                        ElevatedButton(onPressed: null, child: Text('150ml')),
                        ElevatedButton(onPressed: null, child: Text('200ml')),
                      ],
                    ),
                    Row(
                      children: const [Text('')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        ElevatedButton(onPressed: null, child: Text('250ml')),
                        ElevatedButton(onPressed: null, child: Text('300ml')),
                        ElevatedButton(onPressed: null, child: Text('350ml')),
                      ],
                    ),
                    Row(
                      children: const [Text('')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ElevatedButton(
                            onPressed: null, child: Text('500ml')),
                        ElevatedButton(
                          onPressed: null,
                          style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  const Size(220, 40))),
                          child: const Text('Own volume'),
                        ),
                      ],
                    ),
                    Row(
                      children: const [Text('')],
                    ),
                    Row(
                      children: const [Text('')],
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: null,
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                                (states) => mainColor),
                            minimumSize:
                                MaterialStateProperty.all(const Size(250, 40))),
                        child: const Text('Add'),
                      ),
                    ),
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
