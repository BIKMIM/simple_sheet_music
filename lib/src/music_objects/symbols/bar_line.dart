import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol.dart';
import 'package:flutter/material.dart';

class BarLine extends MusicalSymbol {
  const BarLine({this.isThick = false});

  final bool isThick;

  @override
  void draw(Canvas canvas, Size size, Offset offset) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = isThick ? 2.5 : 1.0;

    canvas.drawLine(
      Offset(offset.dx, offset.dy),
      Offset(offset.dx, offset.dy + size.height),
      paint,
    );
  }

  static BarLine regular() => const BarLine();
  static BarLine thick() => const BarLine(isThick: true);
}
