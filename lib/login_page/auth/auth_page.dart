import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:school_aul/login_page/pages/register_page.dart';

import '../pages/login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  
  void toggleScreens() {
    setState(() {
      showLoginPage=! showLoginPage;
    });
  } //метод переключение экрана
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPageState(showRegisterPage: toggleScreens);
    } else {
      return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}
