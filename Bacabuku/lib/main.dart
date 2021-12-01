import 'package:bacabuku/edit_profile.dart';
import 'package:provider/provider.dart';
import 'package:bacabuku/providers/auth_provider.dart';
import 'package:bacabuku/screens/bottom_nav_bar.dart';
import 'package:bacabuku/screens/home/home_page.dart';
import 'package:bacabuku/screens/home/pages/book_details.dart';
import 'package:bacabuku/screens/splash_page.dart';
import 'package:bacabuku/screens/sign_up_page.dart';
import 'package:bacabuku/screens/sign_in_page.dart';
import 'package:bacabuku/screens/user/user_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          SplashPage.nameRoute: (context) => SplashPage(),
          SignUpPage.nameRoute: (context) => SignUpPage(),
          SignInPage.nameRoute: (context) => SignInPage(),
          BottomNavBar.nameRoute: (context) => BottomNavBar(),
          HomePage.nameRoute: (context) => HomePage(),
          BookDetail.nameRoute: (context) => BookDetail(),
          UserPage.nameRoute: (context) => UserPage(),
          EditProfilePage.nameRoute: (context) => EditProfilePage(),
        },
      ),
    );
  }
}
