import '../core.dart';

class HarmonicMajor {
  static const _scale = [
    interval.step,
    interval.step,
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

  /// b3 b5 b7
  static Scale get dorianFlat5 => _modes[2];

  /// b6
  static Scale get harmonicMajor => _modes[1];

  /// b2 b3 b5 b6 bb7
  static Scale get locrianDoubleFlat7 => _modes[7];

  /// #2 #4 #5
  static Scale get lydianAugSharp9 => _modes[6];

  /// b3 #4
  /// AKA lydian diminished
  static Scale get lydianFlat3 => _modes[4];

  /// b2 b7
  static Scale get mixolydianFlat9 => _modes[5];

  /// b2 b3 b4 b6 b7
  static Scale get phrygianFlat4 => _modes[3];
}
