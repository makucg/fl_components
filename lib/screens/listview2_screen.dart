import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const ['A', 'B', 'C'];

  const ListView2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: const Icon(Icons.list),
                title: Text(options[index]),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  print(options[index]);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length),
    );
  }
}
