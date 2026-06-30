import 'package:flutter/material.dart';

class RotatingWidget extends StatelessWidget {
  final Widget child;

  const RotatingWidget({
    required this.child,
    super.key,
    // 忽略以下参数以保持与旧调用处的兼容性，避免修改所有调用文件
    dynamic duration,
    dynamic spinning,
    dynamic reverse,
  });

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
