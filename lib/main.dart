import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_pet_info/features/app/splash_screen/splash_screen.dart';
import 'package:my_pet_info/features/user_auth/presentation/pages/home_page.dart';
import 'package:my_pet_info/features/user_auth/presentation/pages/login_page.dart';
import 'package:my_pet_info/features/user_auth/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCNoWGo1SXOD0Kfd4SOZ8PgHwYqILbQbUI",
        appId: "1:830369899680:web:e5a466f3e6f7bd70e895c5",
        messagingSenderId: "830369899680",
        projectId: "mypetinfo-day",
        storageBucket: "mypetinfo-day.appspot.com",
        measurementId: "G-VS5Q42HME9"
        // web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Pet Info',
      routes: {
        '/': (context) => const SplashScreen(
          // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
          child: LoginPage(),
        ),
        '/login': (context) => const LoginPage(),
        '/signUp': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
