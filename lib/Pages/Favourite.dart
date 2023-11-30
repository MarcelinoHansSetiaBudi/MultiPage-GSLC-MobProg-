import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'This is Favourite Page <3',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
