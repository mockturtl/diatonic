import '../core.dart';

class HarmonicMinor {
  static const _scale = [
    interval.step,
    interval.halfStep,
    interval.step,
    interval.step,
    interval.halfStep,
    interval.min3,
    interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(_scale.length, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// b2 #9 b5 #5 bb7
  static get alteredDominantDoubleFlat7 => _modes[7];

  /// b3 #4 b7
  static get dorianSharp4 => _modes[4];

  /// b3 b6
  static get harmonicMinor => _modes[1];

  /// #5
  static get ionianAugmented => _modes[3];

  /// b2 b5
  static get locrianNatural6 => _modes[2];

  /// #2 #4
  static get lydianSharp9 => _modes[6];

  /// b2 b6 b7
  /// AKA phrygian dominant
  static get phrygianMajor => _modes[5];
}
