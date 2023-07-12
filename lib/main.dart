import 'package:flutter/material.dart';
import 'package:instagram_clone/components/dm_screen_mesage.dart';
import 'package:instagram_clone/view/home_screen.dart';
import 'package:instagram_clone/view/mesapage/dm_screen.dart';
import 'package:instagram_clone/view/reels/reels_screen.dart';
import 'package:provider/provider.dart';
import 'app_init.dart';
import 'view_models/discovery_view_model.dart';
import 'view_models/home_page_view_model.dart';
import 'view_models/timeline_view_model.dart';
//@dart=2.9

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomePageViewModel()),
        ChangeNotifierProvider(create: (context) => TimelineViewModel()),
        ChangeNotifierProvider(create: (context) => DiscoveryViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AppInit(),
      ),
    );
  }
}
