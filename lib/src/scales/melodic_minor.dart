import '../core.dart';

class MelodicMinor {
  static const _scale = [
    interval.step,
    interval.halfStep,
    interval.step,
    interval.step,
    interval.step,
    interval.step,
    interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(7, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// b6 b7
  /// AKA desc melodic major, mixolydian b6
  static get aeolianDominant => _modes[5];

  /// b2 b3(#9) b4(3) b5 b6(#5) b7
  /// AKA super locrian, diminished whole tone
  static get alteredDominant => _modes[7];

  /// b3
  static get ascMelodicMinor => _modes[1];

  /// b2 b3 b7
  static get dorianFlat2 => _modes[2];

  /// b3 b5 b6 b7
  /// AKA half-diminished
  static get locrianNatural2 => _modes[6];

  /// #4 #5
  static get lydianAug => _modes[3];

  /// #4 b7
  /// AKA mixolydian #11
  static get lydianDominant => _modes[4];
}
