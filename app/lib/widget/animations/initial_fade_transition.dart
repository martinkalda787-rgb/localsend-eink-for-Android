import 'package:flutter/material.dart';

/// 静态初始淡入组件（墨水屏版直接渲染子组件，不再延时或动画）
class InitialFadeTransition extends StatelessWidget {
  final Widget child;

  const InitialFadeTransition({
    required this.child,
    super.key,
    // 忽略以下参数以保持与旧调用处的兼容性
    dynamic duration,
    dynamic delay,
  });

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
