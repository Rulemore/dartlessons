import 'package:flutter/material.dart';

import 'de_class.dart';

enum SampleItem { itemParse, itemClear }

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PopupMenuTest(),
    );
  }
}

class PopupMenuTest extends StatefulWidget {
  const PopupMenuTest({super.key});

  @override
  State<PopupMenuTest> createState() => _PopupMenuTestState();
}

class _PopupMenuTestState extends State<PopupMenuTest> {
  SampleItem? selectedMenu;
  static const url = 'https://jsonplaceholder.typicode.com/posts';
  String backgroundtext = 'First phase';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Parse and List'),
        actions: [
          PopupMenuButton<SampleItem>(
            initialValue: selectedMenu,
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemParse,
                child: Text('Parse'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.itemClear,
                child: Text('Clear'),
              ),
            ],
            onSelected: (value) async {
              switch (value) {
                case SampleItem.itemParse:
                  List<dynamic>? html = await parse1(url);
                  if (html != null) {
                    for (dynamic a in html) {
                      backgroundtext += '${Posts.fromJson(a).userId}\n';
                      backgroundtext += '${Posts.fromJson(a).id}\n';
                      backgroundtext += '${Posts.fromJson(a).title}\n';
                      backgroundtext += '${Posts.fromJson(a).body}\n\n';
                    }
                  }
                  break;
                case SampleItem.itemClear:
                  backgroundtext = '';
                  break;
              }
            },
          ),
        ],
      ),
      body: Center(child: Text(backgroundtext)),
    );
  }
}
