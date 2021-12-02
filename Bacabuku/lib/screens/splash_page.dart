import 'dart:async';

import 'package:flutter/material.dart';
import 'package:bacabuku/themes.dart';

class SplashPage extends StatefulWidget {
  static const nameRoute = '/';
  const SplashPage({Key? key}) : super(key: key);
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/ButtonNavBar'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: backgroundColor,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            './assets/icons/Icon-bacabuku.png',
            width: 112,
            height: 130,
          ),
          Text(
            'BACA BUKU',
            style: TextStyle(
              fontSize: 19,
              color: greenColor,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    ));
  }
}
