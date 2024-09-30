import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import '/screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/chat_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dynamic val=await Firebase.initializeApp();
  print(val.toString());
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        ChatScreen.id: (context)=>ChatScreen(),
        LoginScreen.id: (context)=>LoginScreen(),
        RegistrationScreen.id: (context)=>RegistrationScreen(),
        WelcomeScreen.id:(context)=>WelcomeScreen(),
    },
      home: WelcomeScreen(),
    );
  }
}
