import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:rest_api_7_project/view/world_stats.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 3))
        ..repeat();
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WorldStates()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: animationController,
              child: const SizedBox(
                height: 200,
                width: 200,
                child: Center(
                  child: Image(
                    image: AssetImage('images/virus.png'),
                  ),
                ),
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle: animationController.value * 2.0 * math.pi,
                  child: child,
                );
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Covid-19\nTracker App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
