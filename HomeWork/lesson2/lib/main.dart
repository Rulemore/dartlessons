import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Widgets/PostsList.dart';
import 'Widgets/PostsPage.dart';
import 'Widgets/SplashScreen.dart';
import 'bloc/SimpleBlocObserver.dart';
import 'bloc/posts_bloc.dart';
import 'package:http/http.dart' as http;

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(MyApp());
}
class MyApp extends MaterialApp {
    MyApp({super.key}) : super(home: SplashScreen());
}

// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Posts'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.delete),
//             onPressed: () {
//               context.read<PostsBloc>().add(ClearPosts());
//             },
//           ),
//         ],
//       ),
//       body: BlocConsumer<PostsBloc, PostsState>(
//         listener: (context, state) {
//           if (state is PostsError) {
//             ScaffoldMessenger.of(context)
//               ..hideCurrentSnackBar()
//               ..showSnackBar(
//                 SnackBar(
//                   content: Text(state.error),
//                 ),
//               );
//           }
//         },
//         builder: (context, state) {
//           if (state is PostsInitial) {
//             context.read<PostsBloc>().add(FetchPosts());
//             return SplashScreen();
//           } else if (state is PostsLoading) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (state is PostsLoaded) {
//             return PostsList(posts: state.posts);
//           } else {
//             return Container();
//           }
//         },
//       ),
//     );
//   }
// }
