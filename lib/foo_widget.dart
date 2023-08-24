import 'package:flutter/material.dart';

class FooWidget extends StatelessWidget {
  const FooWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
