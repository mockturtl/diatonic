import '../core.dart';

//ignore: avoid_classes_with_only_static_members
class HarmonicMinor {
  static const _scale = [
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.step,
    Interval.halfStep,
    Interval.min3,
    Interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      List.generate(_scale.length, (i) => i + 1, growable: false),
      value: (i) => Scale(_scale, i));

  /// b2 #9 b5 #5 bb7
  static Scale get alteredDominantDoubleFlat7 => _modes[7]!;

  /// b3 #4 b7
  static Scale get dorianSharp4 => _modes[4]!;

  /// b3 b6
  static Scale get harmonicMinor => _modes[1]!;

  /// #5
  static Scale get ionianAugmented => _modes[3]!;

  /// b2 b5
  static Scale get locrianNatural6 => _modes[2]!;

  /// #2 #4
  static Scale get lydianSharp9 => _modes[6]!;

  /// b2 b6 b7
  /// AKA phrygian dominant
  static Scale get phrygianMajor => _modes[5]!;
}
