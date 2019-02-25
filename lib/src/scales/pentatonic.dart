import '../core.dart';

class Pentatonic {
  static const _scale = [
    interval.step,
    interval.step,
    interval.min3,
    interval.step,
    interval.min3,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(5, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// root 2 3 5 6
  static get major => _modes[1];

  /// root b3 4 5 b7
  static get minor => _modes[5];
}
