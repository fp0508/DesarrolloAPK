import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => const HomePage(),
    'alert': (context) => const AlertPage(),
    'avatar': (context) => const AvatarPage(),
  };
}
