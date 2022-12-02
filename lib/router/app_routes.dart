import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initalRoute = 'home';

  static final List<MenuOption> menuOptions = <MenuOption>[
    /* MenuOption(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()), */
    MenuOption(
        route: 'listview1',
        icon: Icons.list,
        name: 'ListView tipo 1',
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listview2',
        icon: Icons.view_list,
        name: 'ListView tipo 2',
        screen: const ListView2Screen()),
    MenuOption(
        route: 'alert',
        icon: Icons.dangerous,
        name: 'Alter Screen',
        screen: const AlertScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.recent_actors_rounded,
        name: 'Card Screen',
        screen: const CardScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.account_circle,
        name: 'Avatar Screen',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.animation,
        name: 'Animated Screen',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.input,
        name: 'Inputs Screen',
        screen: const InputsScreen()),
    MenuOption(
        route: 'slider',
        icon: Icons.slideshow,
        name: 'Slider Screen',
        screen: const SliderScreen()),
    MenuOption(
        route: 'listview_builder',
        icon: Icons.list,
        name: 'ListView Builder Screen',
        screen: const ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> appRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
