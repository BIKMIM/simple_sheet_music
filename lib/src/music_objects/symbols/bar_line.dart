import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:simple_sheet_music/src/glyph_metadata.dart';
import 'package:simple_sheet_music/src/glyph_path.dart';
import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol.dart';
import 'package:simple_sheet_music/src/musical_context.dart';
import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol_metrics.dart';
import 'package:simple_sheet_music/src/music_objects/internal/concrete_musical_symbol_metrics.dart';


class BarLine extends MusicalSymbol {
  final bool isThick;

  const BarLine({this.isThick = false})
      : super(Colors.black, const EdgeInsets.symmetric(horizontal: 4));

  @override
  void draw(Canvas canvas, Size size, Offset offset) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = isThick ? 2.4 : 1.0;

    final start = Offset(offset.dx, offset.dy);
    final end = Offset(offset.dx, offset.dy + size.height);
    canvas.drawLine(start, end, paint);
  }

@override
MusicalSymbolMetrics setContext(
  MusicalContext context,
  GlyphMetadata metadata,
  GlyphPaths paths,
) {
  return ConcreteMusicalSymbolMetrics(width: isThick ? 6 : 4, height: 0);
}


  /// 일반 세로줄
  static BarLine regular() => const BarLine();

  /// 굵은 세로줄 (종결선)
  static BarLine thick() => const BarLine(isThick: true);
}  
