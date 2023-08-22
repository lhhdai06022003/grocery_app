import 'package:flutter/material.dart';
import 'package:grocery_app/Home/home_screen.dart';
import 'package:grocery_app/page_login/main_app.dart';

Future main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Poppins"
      ),
      home:  const MainApp(),
    );
  }
}

