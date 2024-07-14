import 'package:flutter/material.dart';
import 'package:routetask/di/di.dart';
import 'package:routetask/presentation/ui/screens/product_screen.dart';

void main() {
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}
