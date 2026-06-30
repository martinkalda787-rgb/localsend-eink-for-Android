import 'package:flutter/material.dart';

/// 静态幻灯片组件（墨水屏版仅展示首个子组件，去除定时刷新和透明度动画）
class OpacitySlideshow extends StatelessWidget {
  final List<Widget> children;

  const OpacitySlideshow({
    required this.children,
    super.key,
    // 忽略以下参数以保持与旧调用处的兼容性
    dynamic durationMillis,
    dynamic switchDurationMillis,
    dynamic running,
  });

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) {
      return const SizedBox.shrink();
    }
    return children.first;
  }
}
