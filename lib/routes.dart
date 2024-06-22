import 'package:movie/pages/home/home_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/": (context) => HomeScreen(),
};
