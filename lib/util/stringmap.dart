import 'package:flutter/material.dart';

class StringMap {
  // location status colors
  // home.dart
  Map<String, Color> locationStatusColors() => {
        'home': Colors.green[300],
        'away': Colors.orange[300],
        'disconnected': Colors.red[300],
      };
  // shop module icons
  // shop.dart
  Map<String, IconData> ModuleInfoIcons() => {
        'report_problem': Icons.report_problem,
      };
}
