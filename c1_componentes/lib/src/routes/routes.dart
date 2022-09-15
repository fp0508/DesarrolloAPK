import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../pages/alert_page.dart';
import '../pages/animated_container.dart';
import '../pages/avatar_page.dart';
import '../pages/card_page.dart';
import '../pages/home_page.dart';
import '../pages/input_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (context) => const HomePage(),
    'alert': (context) => const AlertPage(),
    'avatar': (context) => const AvatarPage(),
    'card': (context) => const CardPage(),
    'animatedContainer': (context) => const AnimatedContainerPage(),
    'inputs': (context) => const InputPage(),
  };
}
