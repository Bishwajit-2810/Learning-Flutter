import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/provider_file.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  double value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<SliderChanger>(builder: (context, value, child) {
              return Slider(
                max: 1,
                min: 0,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                },
              );
            }),
            Consumer<SliderChanger>(builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.red.withOpacity(value.value),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      color: Colors.green.withOpacity(value.value),
                    ),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
