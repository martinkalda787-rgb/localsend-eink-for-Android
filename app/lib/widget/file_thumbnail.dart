import 'package:common/model/file_type.dart';
import 'package:flutter/material.dart';
import 'package:localsend_app/model/cross_file.dart';

const double defaultThumbnailSize = 50;

class SmartFileThumbnail extends StatelessWidget {
  final FileType fileType;

  const SmartFileThumbnail({
    required this.fileType,
    // 忽略其他参数以保持与旧调用处的兼容性
    dynamic bytes,
    dynamic asset,
    dynamic path,
  });

  factory SmartFileThumbnail.fromCrossFile(CrossFile file) {
    return SmartFileThumbnail(
      fileType: file.fileType,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: defaultThumbnailSize,
      height: defaultThumbnailSize,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.onSurface, width: 1.5),
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).colorScheme.surface,
        ),
        alignment: Alignment.center,
        child: Text(
          fileType.name.toUpperCase(),
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ),
    );
  }
}
