import '../core.dart';

class MajorFlat6Pentatonic {
  static const _scale = [
    interval.step,
    interval.step,
    interval.min3,
    interval.halfStep,
    interval.maj3,
  ];

  /// root 2 3 5 b6
  static Scale get scale => Scale(_scale);
}

class MinorFlat5Pentatonic {
  static const _scale = [
    interval.min3,
    interval.step,
    interval.halfStep,
    interval.maj3,
    interval.step,
  ];

  /// root b3 4 b5 b7
  static Scale get scale => Scale(_scale);
}

class Pentatonic {
  static const _scale = [
    interval.step,
    interval.step,
    interval.min3,
    interval.step,
    interval.min3,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(_scale.length, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// root 2 3 5 6
  static Scale get major => _modes[1];

  /// root b3 4 5 b7
  static Scale get minor => _modes[5];
}
