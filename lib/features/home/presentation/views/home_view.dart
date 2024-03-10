import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Home View',
          style: TextStyle(
            fontFamily: 'Sectra',
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
