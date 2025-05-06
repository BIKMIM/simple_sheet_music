import 'package:flutter/material.dart';
import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol_metrics.dart';
import 'package:simple_sheet_music/src/sheet_music_layout.dart';
import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol_renderer.dart';

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

  ConcreteMusicalSymbolMetrics({
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
    return DummyMusicalSymbolRenderer(); // ⛔ const 제거
  }
}

class DummyMusicalSymbolRenderer extends MusicalSymbolRenderer {
  @override
  bool isHit(Offset position) => false;

  @override
  void render(Canvas canvas) {
    // 아무 것도 그리지 않음 (필요하면 여기에 커스터마이징 가능)
  }
}
