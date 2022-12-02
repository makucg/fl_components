import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://www.xtrafondos.com/wallpapers/paisaje-digital-en-atardecer-5846.jpg',
            title: 'Una luna roja',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://estaticos.muyinteresante.es/uploads/images/test/5fe9e72b5bafe8115fda15ae/adivina-paisaje.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://elviajerofeliz.com/wp-content/uploads/2015/09/paisajes-de-Canada.jpg',
            title: 'Un paisaje de Canada',
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
