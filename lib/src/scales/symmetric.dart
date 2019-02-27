import '../core.dart';

class Augmented {
  static const _scale = [
    interval.min3,
    interval.halfStep,
    interval.min3,
    interval.halfStep,
    interval.min3,
    interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(2, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// #9 3 ##4 #5 7
  static get augmented => _modes[1];

  /// b9 3 4 #5 bb7
  static get augmentedInverse => _modes[2];
}

class Diminished {
  static const _scale = [
    interval.step,
    interval.halfStep,
    interval.step,
    interval.halfStep,
    interval.step,
    interval.halfStep,
    interval.step,
    interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(2, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// b2 b3 b4 b5 bb6 bb7 b7
  /// AKA half-whole
  static get dominantDiminished => _modes[2];

  /// b3 b5 b6 bb7 7
  /// AKA whole-half
  static get tonicDiminished => _modes[1];
}

class WholeTone {
  static const _scale = [
    interval.step,
    interval.step,
    interval.step,
    interval.step,
    interval.step,
    interval.step,
  ];

  /// #4 #5 b7
  static get scale => Scale(_scale);
}
