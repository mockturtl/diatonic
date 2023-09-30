final tones = List.generate(12, (i) => i, growable: false);

int _sizeOf(Interval i) {
  switch (i) {
    case Interval.halfStep:
    case Interval.min2:
      return 1;
    case Interval.step:
    case Interval.maj2:
    case Interval.doubleFlat3:
      return 2;
    case Interval.min3:
    case Interval.sharp9:
      return 3;
    case Interval.maj3:
      return 4;
    case Interval.perf4:
      return 5;
    case Interval.sharp11:
    case Interval.flat5:
      return 6;
    case Interval.perf5:
      return 7;
    case Interval.sharp5:
    case Interval.min6:
      return 8;
    case Interval.maj6:
    case Interval.doubleFlat7:
      return 9;
    case Interval.min7:
      return 10;
    case Interval.maj7:
      return 11;
    case Interval.octave:
      return 12;
    case Interval.nil:
      //ignore: avoid_print
      print('ERROR: unhandled case $i');
      return 0;
  }
}

List<int> _toSemitones(List<Interval> scale) =>
    scale.map(_sizeOf).toList(growable: false);

enum Interval {
  nil,
  halfStep,
  min2,
  step,
  maj2,
  doubleFlat3,
  min3,
  sharp9,
  maj3,
  perf4,
  sharp11,
  flat5,
  perf5,
  sharp5,
  min6,
  maj6,
  doubleFlat7,
  min7,
  maj7,
  octave,
}

enum Quality {
  unknown,
  minor,
  major,
  dominant,
  min7b5,
  minMaj7,
  augmented,
  altered,
  diminished,
}

class Scale {
  final List<int> intervals;

  Scale(List<Interval> scale, [int modeIndex = 1])
      : assert(modeIndex >= 1, modeIndex <= scale.length),
        intervals = _toSemitones(List.generate(
            scale.length, (i) => scale[(i + modeIndex - 1) % scale.length])) {
    assert(_sumIntervals(intervals.length) == 12, 'Intervals must sum to 12');
  }

  // Chord quality is determined by certain intervals within the scale.
  Quality get chordQuality {
    if (intervals.length == 5) return _pentatonicQuality;

    if (_min3) {
      if (_flat5) {
        if (_bb7) return Quality.diminished;
        if (_min7) return Quality.min7b5;
      }
      if (_maj7) return Quality.minMaj7;
      if (_min7) return Quality.minor;
      return Quality.minor;
    }

    if (_maj3) {
      if (_min7) {
        if (_alt) return Quality.altered;
        return Quality.dominant;
      }
      if (_sharp5) return Quality.augmented;
      if (_maj7) return Quality.major;
    }

    // enharmonic to b7, tonic, maj3, perf5
    if (_bb3 && _flat5 && _bb7) return Quality.dominant;

    return Quality.unknown;
  }

  bool get _alt => _flat5 || _sharp5 || _flat2 || _sharp9;

  bool get _bb3 => _sumIntervals(2) == _sizeOf(Interval.maj2);

  bool get _bb7 => _seventhInterval == _sizeOf(Interval.doubleFlat7);

  bool get _flat2 => _sumIntervals(1) == _sizeOf(Interval.min2);

  bool get _flat5 => _sumIntervals(4) == _sizeOf(Interval.flat5);

  bool get _maj3 => _sumIntervals(2) == _sizeOf(Interval.maj3);

  bool get _maj7 => _seventhInterval == _sizeOf(Interval.maj7);

  bool get _min3 => _sumIntervals(2) == _sizeOf(Interval.min3);

  bool get _min7 => _seventhInterval == _sizeOf(Interval.min7);

  Quality get _pentatonicQuality {
    if (_sumIntervals(2) == _sizeOf(Interval.maj3)) return Quality.major;
    if (_sumIntervals(1) == _sizeOf(Interval.min3)) {
      if (_sumIntervals(3) == _sizeOf(Interval.flat5)) {
        return Quality.diminished;
      }
      return Quality.minor;
    }
    return Quality.unknown;
  }

  int get _seventhInterval => intervals.length >= 7
      ? _sumIntervals(6)
      : intervals[intervals.length - 1];

  bool get _sharp5 => _sumIntervals(4) == _sizeOf(Interval.sharp5);

  bool get _sharp9 => _sumIntervals(1) == _sizeOf(Interval.sharp9);

  @override
  String toString() => '{Scale: $chordQuality $intervals}';

  int _sumIntervals(int size) {
    assert(size >= 1 && size <= intervals.length,
        'size $size must be between 1 and ${intervals.length}, inclusive');
    return intervals.take(size).reduce((i, j) => i + j);
  }
}
