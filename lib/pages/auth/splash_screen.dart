import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Text('logo'),
                  Text('Tumbuh Sehat'),
                ],
              ),
              Text('Bantu Ibu Pantau Gizi'),
              Text('Button'),
              Text('ilustrasi'),
            ],
          ),
        ),
      ),
    );
  }
}
