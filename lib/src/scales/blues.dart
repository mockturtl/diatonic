import '../scale.dart';

class Blues {
  static const _scale = [
    interval.step,
    interval.halfStep,
    interval.halfStep,
    interval.min3,
    interval.step,
    interval.min3,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(_scale.length, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// root 2 #9 3 5 6
  static Scale get major => _modes[1];

  /// root b3 4 b5 5 b7
  static Scale get minor => _modes[6];
}

class HybridBlues {
  static const _scale = [
    interval.min3,
    interval.halfStep,
    interval.halfStep,
    interval.halfStep,
    interval.halfStep,
    interval.min3,
    interval.step,
  ];

  /// root #9 3 4 b5 5 7
  static Scale get scale => Scale(_scale);
}
