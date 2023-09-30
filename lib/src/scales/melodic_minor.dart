import '../core.dart';

//ignore: avoid_classes_with_only_static_members
class MelodicMinor {
  static const _scale = [
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.step,
    Interval.step,
    Interval.step,
    Interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      List.generate(_scale.length, (i) => i + 1, growable: false),
      value: (i) => Scale(_scale, i));

  /// b2 b3(#9) b4(3) b5 b6(#5) b7
  /// AKA super locrian, diminished whole tone
  static Scale get alteredDominant => _modes[7]!;

  /// b3
  static Scale get ascMelodicMinor => _modes[1]!;

  /// b2 b3 b7
  static Scale get dorianFlat2 => _modes[2]!;

  /// b3 b5 b6 b7
  /// AKA half-diminished
  static Scale get locrianNatural2 => _modes[6]!;

  /// #4 #5
  static Scale get lydianAug => _modes[3]!;

  /// b6 b7
  /// AKA desc melodic major, aeolian dominant
  static Scale get mixolydianFlat6 => _modes[5]!;

  /// #4 b7
  /// AKA lydian dominant
  static Scale get mixolydianSharp11 => _modes[4]!;
}
