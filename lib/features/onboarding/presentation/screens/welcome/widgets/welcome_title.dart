import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome',
      style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
    );
  }
}