import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instant_language_trans/auth_page.dart';
import 'package:instant_language_trans/main.dart%20for%20login.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'login_page.dart';

class MainPage extends StatelessWidget {
const MainPage({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
return Scaffold(
body: StreamBuilder<User?>(
stream: FirebaseAuth.instance.authStateChanges(),
builder: (context, snapshot) {
if (snapshot.hasData) {
return HomePage();
} else {
return AuthPage();
}
},
),
);
}
}