import 'package:fl_components/models/models.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            MenuOption menuOption = AppRoutes.menuOptions[index];
            return ListTile(
              leading: Icon(
                menuOption.icon,
              ),
              title: Text(menuOption.name),
              onTap: () {
                Navigator.pushNamed(context, menuOption.route);
              },
            );
          },
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
