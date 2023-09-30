import '../core.dart';

/// AKA [Major6Diminished]
typedef BebopMajor = Major6Diminished;

/// AKA [Minor6Diminished]
typedef BebopMelodicMinor = Minor6Diminished;

//ignore: avoid_classes_with_only_static_members
class BebopDominant {
  static const _scale = [
    Interval.step,
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.step,
    Interval.halfStep,
    Interval.halfStep,
    Interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      [...List.generate(_scale.length, (i) => i + 1)],
      value: (i) => Scale(_scale, i));

  static Scale get bebopDominant => _modes[1]!;

  static Scale get bebopDorian => _modes[5]!;
}

//ignore: avoid_classes_with_only_static_members
class DominantDiminished {
  static const _scale = [
    Interval.step,
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.halfStep,
    Interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      [...List.generate(_scale.length, (i) => i + 1)],
      value: (i) => Scale(_scale, i));

  static Scale get dominantDiminished => _modes[1]!;
}

//ignore: avoid_classes_with_only_static_members
class DominantFlat5Diminished {
  static const _scale = [
    Interval.step,
    Interval.step,
    Interval.halfStep,
    Interval.halfStep,
    Interval.step,
    Interval.step,
    Interval.halfStep,
    Interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      [...List.generate(_scale.length, (i) => i + 1)],
      value: (i) => Scale(_scale, i));

  static Scale get dominantFlat5Diminished => _modes[1]!;
}

//ignore: avoid_classes_with_only_static_members
/// AKA [BebopMajor]
class Major6Diminished {
  static const _scale = [
    Interval.step,
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.halfStep,
    Interval.halfStep,
    Interval.step,
    Interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      [...List.generate(_scale.length, (i) => i + 1)],
      value: (i) => Scale(_scale, i));

  static Scale get bebopHarmonicMinor => _modes[6]!;

  /// AKA [major6Diminished]
  static Scale get bebopMajor => major6Diminished;

  /// AKA [bebopMajor]
  static Scale get major6Diminished => _modes[1]!;
}

//ignore: avoid_classes_with_only_static_members
/// AKA [BebopMelodicMinor]
class Minor6Diminished {
  static const _scale = [
    Interval.step,
    Interval.halfStep,
    Interval.step,
    Interval.step,
    Interval.halfStep,
    Interval.halfStep,
    Interval.step,
    Interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      [...List.generate(_scale.length, (i) => i + 1)],
      value: (i) => Scale(_scale, i));

  /// AKA [minor6Diminished]
  static Scale get bebopMinor => minor6Diminished;

  /// AKA [bebopMinor]
  static Scale get minor6Diminished => _modes[1]!;
}
