import 'package:flutter/material.dart';
import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol_metrics.dart';
import 'package:simple_sheet_music/src/sheet_music_layout.dart';
import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol_renderer.dart'; // ✅ 여기로 변경!

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

  const ConcreteMusicalSymbolMetrics({
    required this.width,
    required this.height,
    this.upperHeight = 0,
    this.lowerHeight = 0,
    this.margin = EdgeInsets.zero,
  });

  @override
  MusicalSymbolRenderer renderer(
    SheetMusicLayout context, {
    bool dryRun = false,
    double? staffLineCenterY,
  }) {
    // 기본 구현 반환 (필요 시 커스터마이징 가능)
    return const DummyMusicalSymbolRenderer();
  }
}

class DummyMusicalSymbolRenderer extends MusicalSymbolRenderer {
  const DummyMusicalSymbolRenderer();
}
