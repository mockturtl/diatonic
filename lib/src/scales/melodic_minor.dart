import '../core.dart';

//ignore: avoid_classes_with_only_static_members
/// https://en.wikipedia.org/wiki/Heptatonic_scale#Heptatonia_secunda
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

  /// AKA [lydianDominant]
  static Scale get acoustic => lydianDominant;

  /// AKA [mixolydianFlat6].
  static Scale get aeolianDominant => mixolydianFlat6;

  /// b2 b3(#9) b4(3) b5 b6(#5) b7, AKA [superLocrian], [diminishedWholeTone]
  static Scale get alteredDominant => _modes[7]!;

  /// b3
  static Scale get ascMelodicMinor => _modes[1]!;

  static Scale get descMelodicMajor => mixolydianFlat6;

  /// AKA [alteredDominant]
  static Scale get diminishedWholeTone => alteredDominant;

  /// b2 b3 b7, AKA [phrygianSharp6]
  static Scale get dorianFlat2 => _modes[2]!;

  /// AKA [locrianNatural2].
  static Scale get halfDiminished => locrianNatural2;

  /// b3 b5 b6 b7, AKA [halfDiminished]
  static Scale get locrianNatural2 => _modes[6]!;

  /// #4 #5
  static Scale get lydianAug => _modes[3]!;

  /// AKA [mixolydianSharp11].
  static Scale get lydianDominant => mixolydianSharp11;

  /// b6 b7, AKA [descMelodicMajor], [aeolianDominant]
  static Scale get mixolydianFlat6 => _modes[5]!;

  /// #4 b7, AKA [lydianDominant], [acoustic]
  static Scale get mixolydianSharp11 => _modes[4]!;

  /// AKA [dorianFlat2]
  static Scale get phrygianSharp6 => dorianFlat2;

  /// AKA [alteredDominant]
  static Scale get superLocrian => alteredDominant;
}
