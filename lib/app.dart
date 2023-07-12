import 'package:flutter/material.dart';

import 'view/home.dart';

class SimpleGetApi extends StatelessWidget {
  const SimpleGetApi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
