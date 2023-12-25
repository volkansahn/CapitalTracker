import 'package:capitaltrack/styles/styles.dart';
import 'package:flutter/material.dart';

class GreetingSection extends StatelessWidget {
  const GreetingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, User',
      style: Styles.headingText,
      textAlign: TextAlign.left,
    );
  }
}
