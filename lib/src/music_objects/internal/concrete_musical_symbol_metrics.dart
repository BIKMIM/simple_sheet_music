import 'package:flutter/material.dart';
import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol_metrics.dart';
import 'package:simple_sheet_music/src/sheet_music_layout.dart';
import 'package:simple_sheet_music/src/renderer/musical_symbol_renderer.dart';

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
  return const MusicalSymbolRenderer();
}
}
