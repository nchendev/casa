import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:lowkey/injection.dart';
import 'package:flutter/services.dart';
import 'package:lowkey/presentation/core/app_widget.dart';

void main() {
  configureInjection(Environment.prod);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue[100], // navigation bar color
    statusBarColor: Colors.blue[100], // status bar color
  ));

  runApp(AppWidget());
}
