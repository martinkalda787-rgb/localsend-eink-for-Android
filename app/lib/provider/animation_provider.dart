import 'package:flutter/scheduler.dart';
import 'package:refena_flutter/refena_flutter.dart';
import 'package:routerino/routerino.dart';

/// 在后台时是否休眠动画（墨水屏版本中始终不开启任何动画）
final sleepProvider = StateProvider<bool>((ref) {
  return true;
}, debugLabel: 'sleepProvider');

/// 动画开启状态提供者（墨水屏版本始终返回 false）
final animationProvider = ViewProvider<bool>((ref) {
  timeDilation = 0.00001; // 使动画瞬间完成
  Routerino.transition = RouterinoTransition.noTransition; // 禁用路由切换动画
  return false;
}, debugLabel: 'animationProvider');

void setDefaultRouteTransition() {
  Routerino.transition = RouterinoTransition.noTransition;
}
