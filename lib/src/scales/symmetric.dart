import '../core.dart';

//ignore: avoid_classes_with_only_static_members
class Augmented {
  static const _scale = [
    Interval.min3,
    Interval.halfStep,
    Interval.min3,
    Interval.halfStep,
    Interval.min3,
    Interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      List.generate(2, (i) => i + 1, growable: false),
      value: (i) => Scale(_scale, i));

  /// #9 3 ##4 #5 7
  static Scale get augmented => _modes[1]!;

  /// b9 3 4 #5 bb7
  static Scale get augmentedInverse => _modes[2]!;
}

//ignore: avoid_classes_with_only_static_members
class Diminished {
  static const _scale = [
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      List.generate(2, (i) => i + 1, growable: false),
      value: (i) => Scale(_scale, i));

  /// b2 b3 b4 b5 bb6 bb7 b7,  AKA [halfWhole]
  static Scale get dominantDiminished => _modes[2]!;

  /// AKA [dominantDiminished]
  static Scale get halfWhole => dominantDiminished;

  /// b3 b5 b6 bb7 7,  AKA [wholeHalf]
  static Scale get tonicDiminished => _modes[1]!;

  /// AKA [tonicDiminished]
  static Scale get wholeHalf => tonicDiminished;
}

//ignore: avoid_classes_with_only_static_members
class WholeTone {
  static const _scale = [
    Interval.step,
    Interval.step,
    Interval.step,
    Interval.step,
    Interval.step,
    Interval.step,
  ];

  /// #4 #5 b7
  static Scale get scale => Scale(_scale);
}
