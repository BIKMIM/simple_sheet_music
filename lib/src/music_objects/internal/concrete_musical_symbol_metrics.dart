import 'package:flutter/material.dart';
import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol_metrics.dart';

class ConcreteMusicalSymbolMetrics extends MusicalSymbolMetrics {
  @override
  final double width;

  @override
  final double height;

  @override
  final double upperHeight;

  @override
  final double lowerHeight;

  @override
  final EdgeInsets margin;

  // 생성자에서 const 제거!
  ConcreteMusicalSymbolMetrics({
    required this.width,
    required this.height,
    this.upperHeight = 0,
    this.lowerHeight = 0,
    this.margin = EdgeInsets.zero,
  });

  // ❌ 이거는 삭제하거나 나중에 맞게 구현
  // @override
  // MusicalSymbolRenderer renderer(SheetMusicLayout context, {required double staffLineCenterY, bool dryRun = false}) {
  //   throw UnimplementedError();
  // }
}
