import 'package:flutter/material.dart';
import 'package:lowkey/presentation/sign_in/sign_in_page.dart';
import 'package:lowkey/presentation/sign_up/sign_up_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'casa',
      home: SignInPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.blue[100],
      ),
    );
  }
}
