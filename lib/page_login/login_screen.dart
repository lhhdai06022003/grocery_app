import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/Home/home_screen.dart';
import 'package:grocery_app/constant/constant.dart';
import 'package:grocery_app/page_login/main_app.dart';

import '../firebase/firebase_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final firebaseServices = FirebaseService();
  late Future<bool> isLogged;
  @override
  void initState() {
    isLogged = firebaseServices.isLogged();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: isLogged,
        builder: (context,snapshot){

          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.data ?? false) {
            _goHomePage();
            return Container();
          }
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.0,),
                Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        letterSpacing: 0.41,
                        color: kPrimaryColor
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Image.asset("assets/images/phone_key.png"),
                SizedBox(height: 15.0,),
                Text(
                  "Use your google account to login",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.41,
                      color: kTitleColor
                  ),
                ),
                SizedBox(height: 30.0,),
                ElevatedButton.icon(
                  icon: Icon(FontAwesomeIcons.google,size: 25,color: kTitleColor,),
                  onPressed: (){
                    _loginGoogle();
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: kPrimaryColor,
                    backgroundColor: Colors.white,
                    minimumSize:Size(double.infinity, 55) ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),// foreground
                  ),
                  label: Text(
                    "Login with Google",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: kTitleColor,
                        letterSpacing: -0.165
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _loginGoogle() async {
    try {
      firebaseServices
          .signInWithGoogle()
          .whenComplete(() => Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => MainApp())));
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }

  void _goHomePage() {
    Future.delayed(Duration.zero, () {
      Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => MainApp()));
    });
  }
}
