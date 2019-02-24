import '../core.dart';

class Major {
  static const _scale = [
    interval.step,
    interval.step,
    interval.halfStep,
    interval.step,
    interval.step,
    interval.step,
    interval.halfStep,
  ];

  static final _modes = Map<int, Scale>.fromIterable(
    List.generate(7, (i) => i + 1, growable: false),
    value: (i) => Scale(_scale, i),
  );

  /// b3 b6 b7
  static get aeolian => _modes[6];

  /// b3 b7
  static get dorian => _modes[2];

  static get ionian => _modes[1];

  /// b2 b3 b5 b6 b7
  static get locrian => _modes[7];

  /// #4
  static get lydian => _modes[4];

  /// b7
  static get mixolydian => _modes[5];

  /// b2 b3 b6 b7
  static get phrygian => _modes[3];
}
