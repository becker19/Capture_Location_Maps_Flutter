import 'package:flutter/material.dart';
import 'package:maps/page/add_page.dart';
import 'package:maps/page/home_page.dart';

import 'package:maps/provider/map_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MapsProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/add-page',
        routes: {
          '/home-page': (_) => const HomePage(),
          '/add-page': (_) => const AddPage(),
        },
      ),
    );
  }
}
