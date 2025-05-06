import 'package:simple_sheet_music/src/music_objects/interface/musical_symbol_metrics.dart';

class ConcreteMusicalSymbolMetrics extends MusicalSymbolMetrics {
  @override
  final double width;

  @override
  final double height;

  const ConcreteMusicalSymbolMetrics({required this.width, required this.height});
}
