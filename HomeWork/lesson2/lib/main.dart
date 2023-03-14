import 'package:flutter/material.dart';
import 'Dio.dart';
import 'Widgets/PostsList.dart';
import 'Widgets/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;
  List<dynamic>? _posts;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      _isLoading = false;
    });
    _fetchPosts();
  }

  Future<void> _fetchPosts() async {
    List<dynamic>? posts = await getPosts();
    if (mounted) {
      setState(() {
        _posts = posts;
      });
    }
  }

  Future<void> _refreshPosts() async {
    List<dynamic>? posts = await getPosts();
    if (mounted) {
      setState(() {
        _posts = posts;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _isLoading
          ? SplashScreen()
          : Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
          actions: [
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  _posts = null;
                });
              },
            ),
          ],
        ),
        body: _posts == null
            ? RefreshIndicator(
          onRefresh: _refreshPosts,
          child: ListView(
            children: [
              Center(child: Text('Здесь ничего нет')),
            ],
          ),
        )
            : PostsList(posts: _posts),
      ),
    );
  }
}
