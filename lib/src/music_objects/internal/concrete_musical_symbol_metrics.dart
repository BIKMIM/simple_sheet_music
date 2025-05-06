import 'package:flutter/material.dart';
import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol_metrics.dart';
import 'package:simple_sheet_music/src/musical_context.dart';
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

  const ConcreteMusicalSymbolMetrics({
    required this.width,
    required this.height,
    this.upperHeight = 0,
    this.lowerHeight = 0,
    this.margin = EdgeInsets.zero,
  });

  @override
  MusicalSymbolRenderer renderer(MusicalContext context) {
    // 임시 구현: BarLine은 별도 renderer가 없으므로 비워둠.
    throw UnimplementedError('BarLine은 renderer를 사용하지 않습니다.');
  }
}
