import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.photo_library_outlined,
            color: AppTheme.primary,
          ),
          title: Text('Soy un titulo'),
          subtitle: Text('Párrafo'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('OK')),
              TextButton(onPressed: () {}, child: const Text('Cancel'))
            ],
          ),
        )
      ]),
    );
  }
}
