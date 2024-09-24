import 'package:flutter/material.dart';
import 'package:green_genius/src/controllers/services/dev_functions/dev_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DevScaffold(
      child: Scaffold(),
    );
  }
}