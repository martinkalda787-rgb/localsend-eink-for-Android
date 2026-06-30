import 'package:flutter/material.dart' as material;
import 'package:flutter/widgets.dart';

class Icon extends StatelessWidget {
  final IconData? icon;
  final double? size;
  final double? fill;
  final double? weight;
  final double? grade;
  final double? opticalSize;
  final Color? color;
  final List<Shadow>? shadows;
  final String? semanticLabel;
  final TextDirection? textDirection;

  const Icon(
    this.icon, {
    super.key,
    this.size,
    this.fill,
    this.weight,
    this.grade,
    this.opticalSize,
    this.color,
    this.shadows,
    this.semanticLabel,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    if (icon == null) return const SizedBox.shrink();
    
    final text = _getIconText(icon!);
    if (text == null || text.isEmpty) {
      return const SizedBox.shrink();
    }

    final theme = material.Theme.of(context);
    final textColor = color ?? theme.colorScheme.onSurface;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
      child: Text(
        text,
        style: TextStyle(
          fontSize: (size ?? 24) * 0.55, // 适当缩放字体大小以适应原本的图标空间
          color: textColor,
          fontWeight: FontWeight.bold,
          height: 1.0,
        ),
        semanticsLabel: semanticLabel,
        textDirection: textDirection,
      ),
    );
  }

  static String? _getIconText(IconData icon) {
    // 映射所有 LocalSend 中使用的 Material Icons 到简体中文文本
    if (icon == material.Icons.wifi) return '[网络]';
    if (icon == material.Icons.send) return '[发送]';
    if (icon == material.Icons.settings) return '[设置]';
    if (icon == material.Icons.history) return '[历史]';
    if (icon == material.Icons.info || icon == material.Icons.info_outline) return '[信息]';
    if (icon == material.Icons.close || icon == material.Icons.clear) return '[关闭]';
    if (icon == material.Icons.add) return '[添加]';
    if (icon == material.Icons.delete || icon == material.Icons.delete_forever) return '[删除]';
    if (icon == material.Icons.edit) return '[编辑]';
    if (icon == material.Icons.favorite) return '[已存]';
    if (icon == material.Icons.favorite_border) return '[存入]';
    if (icon == material.Icons.sync) return '[同步]';
    if (icon == material.Icons.check_circle || icon == material.Icons.check) return '[完成]';
    if (icon == material.Icons.help || icon == material.Icons.help_outline) return '[帮助]';
    if (icon == material.Icons.error || icon == material.Icons.error_outline) return '[错误]';
    if (icon == material.Icons.content_copy) return '[复制]';
    if (icon == material.Icons.qr_code || icon == material.Icons.qr_code_scanner) return '[扫码]';
    if (icon == material.Icons.tv) return '[电视]';
    
    // 方向与翻页
    if (icon == material.Icons.arrow_back || icon == material.Icons.arrow_back_ios_new_rounded) return '<-';
    if (icon == material.Icons.arrow_forward || icon == material.Icons.arrow_forward_ios_rounded) return '->';
    if (icon == material.Icons.arrow_drop_down || icon == material.Icons.keyboard_arrow_down) return '[▼]';
    if (icon == material.Icons.arrow_drop_up || icon == material.Icons.keyboard_arrow_up) return '[▲]';
    if (icon == material.Icons.chevron_left) return '<';
    if (icon == material.Icons.chevron_right) return '>';

    // 控制与操作
    if (icon == material.Icons.play_arrow) return '[启动]';
    if (icon == material.Icons.refresh) return '[刷新]';
    if (icon == material.Icons.stop) return '[停止]';
    if (icon == material.Icons.pause) return '[暂停]';

    // 文件类型
    if (icon == material.Icons.image) return '[图片]';
    if (icon == material.Icons.movie || icon == material.Icons.video_file) return '[视频]';
    if (icon == material.Icons.description) return '[文档]';
    if (icon == material.Icons.subject) return '[文本]';
    if (icon == material.Icons.android) return '[安装包]';
    if (icon == material.Icons.apps) return '[应用]';
    if (icon == material.Icons.folder) return '[文件夹]';
    if (icon == material.Icons.paste) return '[剪贴板]';
    if (icon == material.Icons.file_present_sharp || icon == material.Icons.insert_drive_file) return '[文件]';

    // 设备类型
    if (icon == material.Icons.smartphone || icon == material.Icons.phone_android) return '[手机]';
    if (icon == material.Icons.computer || icon == material.Icons.desktop_windows_rounded) return '[电脑]';
    if (icon == material.Icons.language) return '[网页]';
    if (icon == material.Icons.terminal) return '[终端]';
    if (icon == material.Icons.dns) return '[服务器]';

    // 其他功能图标
    if (icon == material.Icons.ads_click) return '[手动IP]';
    if (icon == material.Icons.vpn_key) return '[密钥]';
    if (icon == material.Icons.casino) return '[随机]';
    if (icon == material.Icons.warning || icon == material.Icons.warning_amber) return '[警告]';
    if (icon == material.Icons.remove_circle || icon == material.Icons.remove) return '[移除]';
    if (icon == material.Icons.search) return '[搜索]';
    if (icon == material.Icons.folder_open) return '[打开]';
    if (icon == material.Icons.open_in_new) return '[跳转]';
    if (icon == material.Icons.lock) return '[已加密]';
    if (icon == material.Icons.lock_open) return '[未加密]';
    if (icon == material.Icons.visibility) return '[显示]';
    if (icon == material.Icons.visibility_off) return '[隐藏]';
    if (icon == material.Icons.more_vert || icon == material.Icons.more_horiz) return '[...]';
    if (icon == material.Icons.menu) return '[菜单]';

    // 默认回退：如果不关键则隐藏，或者是通用提示
    return '';
  }
}
