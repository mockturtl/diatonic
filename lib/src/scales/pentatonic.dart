import '../core.dart';

//ignore: avoid_classes_with_only_static_members
class MajorFlat6Pentatonic {
  static const _scale = [
    Interval.step,
    Interval.step,
    Interval.min3,
    Interval.halfStep,
    Interval.maj3,
  ];

  /// root 2 3 5 b6
  static Scale get scale => Scale(_scale);
}

//ignore: avoid_classes_with_only_static_members
class MinorFlat5Pentatonic {
  static const _scale = [
    Interval.min3,
    Interval.step,
    Interval.halfStep,
    Interval.maj3,
    Interval.step,
  ];

  /// root b3 4 b5 b7
  static Scale get scale => Scale(_scale);
}

//ignore: avoid_classes_with_only_static_members
class Pentatonic {
  static const _scale = [
    Interval.step,
    Interval.step,
    Interval.min3,
    Interval.step,
    Interval.min3,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
      List.generate(_scale.length, (i) => i + 1, growable: false),
      value: (i) => Scale(_scale, i));

  /// root 2 3 5 6
  static Scale get major => _modes[1]!;

  /// root b3 4 5 b7
  static Scale get minor => _modes[5]!;
}
