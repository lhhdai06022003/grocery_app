import 'package:flutter/material.dart';
import 'package:grocery_app/page_login/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:grocery_app/page_login/main_app.dart';
import 'package:grocery_app/provider/product_provider.dart';
import 'package:provider/provider.dart';

Future<void> main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider<ProductProvider>(
      create: (_) => ProductProvider(),
      child: const MyApp(),
    )
  );
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
      home:   LoginScreen(),
    );
  }
}

