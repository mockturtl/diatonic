import '../scale.dart';

class Blues {
  static const _scale = [
    interval.step,
    interval.halfStep,
    interval.halfStep,
    interval.min3,
    interval.step,
    interval.min3,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(_scale.length, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// root 2 b3 3 5 6
  static Scale get major => _modes[1];

  /// root b3 4 b5 5 b7
  static Scale get minor => _modes[6];
}
