import 'package:flutter/material.dart';
import 'package:prakmodul_05/flexible_expanded.dart';
import 'package:prakmodul_05/jenis_list_view.dart';
import 'package:prakmodul_05/custom_scroll_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: CustomScrollViewExample()
        // FlexibleExpandedScreen()
        // JenisListView(),
        );
  }
}

class FlexibleExpanded {}
