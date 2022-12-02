import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['A', 'B', 'C'];

  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((e) => ListTile(
                    leading: const Icon(Icons.list),
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
