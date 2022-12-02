import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100.0;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Slider.adaptive(
                min: 50,
                max: 500,
                value: _sliderValue,
                activeColor: AppTheme.primary,
                onChanged: _blockCheck
                    ? (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      }
                    : null),
            Checkbox(
                value: _blockCheck,
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  setState(() {
                    _blockCheck = value!;
                  });
                }),
            CheckboxListTile(
              value: _blockCheck,
              activeColor: AppTheme.primary,
              onChanged: (value) {
                setState(() {
                  _blockCheck = value!;
                });
              },
              title: const Text('Habilitar Slider',
                  style: TextStyle(color: AppTheme.primary)),
            ),
            Switch.adaptive(
                value: _blockCheck,
                activeColor: AppTheme.primary,
                onChanged: (value) {
                  setState(() {
                    _blockCheck = value;
                  });
                }),
            SwitchListTile.adaptive(
              value: _blockCheck,
              activeColor: AppTheme.primary,
              onChanged: (value) {
                setState(() {
                  _blockCheck = value;
                });
              },
              title: const Text('Habilitar Slider',
                  style: TextStyle(color: AppTheme.primary)),
            ),
            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://i.pinimg.com/originals/3e/2f/6a/3e2f6a9ce186fe59b4a7d392e1c96764.jpg'),
                  width: _sliderValue,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
