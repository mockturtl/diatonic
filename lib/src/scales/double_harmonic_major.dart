import '../scale.dart';

class DoubleHarmonicMajor {
  static const _scale = [
    interval.halfStep,
    interval.min3,
    interval.halfStep,
    interval.step,
    interval.halfStep,
    interval.min3,
    interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(_scale.length, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// b2 b6
  /// AKA Gypsy major, Byzantine
  static Scale get doubleHarmonicMajor => _modes[1];

  /// b3 #4 b6
  /// AKA Hungarian minor, Gypsy minor
  static Scale get doubleHarmonicMinor => _modes[4];

  /// #2 #5
  static Scale get ionianAugSharp9 => _modes[6];

  /// b2 bb3 b5 b6 bb7
  static Scale get locrianDoubleFlat3DoubleFlat7 => _modes[7];

  /// #2 #4 #6
  static Scale get lydianSharp2Sharp6 => _modes[2];

  /// b2 b5 b7
  static Scale get oriental => _modes[5];

  /// b2 b3 b4 b6 bb7
  static Scale get ultraPhrygian => _modes[3];
}
