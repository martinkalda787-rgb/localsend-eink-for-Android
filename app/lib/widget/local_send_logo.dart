import 'package:flutter/material.dart';
import 'package:localsend_app/gen/assets.gen.dart';

class LocalSendLogo extends StatelessWidget {
  final bool withText;

  const LocalSendLogo({required this.withText});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'LocalSend',
          style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, letterSpacing: 1.2),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
