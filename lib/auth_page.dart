import 'package:flutter/material.dart';
import 'package:instant_language_trans/register_page.dart';

import 'main.dart for login.dart';

class AuthPage extends StatefulWidget {
const AuthPage({Key? key}) : super(key: key);

@override
State<AuthPage> createState() => AuthPageState();
}

class AuthPageState extends State<AuthPage> {
// initially, show the login page
bool showLoginPage = true;
void toggleScreen() {
  setState(() {
    showLoginPage= !showLoginPage;
  });
}

@override
Widget build(BuildContext context) {
if (showLoginPage) {
return LoginPage(showRegisterPage: toggleScreen, ShowRegisterPage: () {  },);
} else {
return RegisterPage(showLoginPage: toggleScreen);
}
}
}
