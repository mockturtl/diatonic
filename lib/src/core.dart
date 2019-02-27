final tones = List.generate(12, (i) => i, growable: false);

int _sizeOf(interval i) {
  switch (i) {
    case interval.halfStep:
    case interval.min2:
      return 1;
    case interval.step:
    case interval.maj2:
    case interval.doubleFlat3:
      return 2;
    case interval.min3:
    case interval.sharp9:
      return 3;
    case interval.maj3:
      return 4;
    case interval.perf4:
      return 5;
    case interval.sharp11:
    case interval.flat5:
      return 6;
    case interval.perf5:
      return 7;
    case interval.sharp5:
    case interval.min6:
      return 8;
    case interval.maj6:
    case interval.doubleFlat7:
      return 9;
    case interval.min7:
      return 10;
    case interval.maj7:
      return 11;
    case interval.octave:
      return 12;
    default:
      print('ERROR: unhandled case $i');
      return 0;
  }
}

List<int> _toSemitones(List<interval> scale) =>
    scale.map((ival) => _sizeOf(ival)).toList(growable: false);

enum interval {
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

enum quality {
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

  Scale(List<interval> scale, [int modeIndex = 1])
      : assert(modeIndex >= 1, modeIndex <= scale.length),
        intervals = _toSemitones(List.generate(
            scale.length, (i) => scale[(i + modeIndex - 1) % scale.length])) {
    assert(_sumIntervals(intervals.length) == 12);
  }

  // Chord quality is determined by certain intervals within the scale.
  quality get chordQuality {
    if (intervals.length == 5) return _pentatonicQuality;

    if (_min3) {
      if (_flat5) {
        if (_bb7) return quality.diminished;
        if (_min7) return quality.min7b5;
      }
      if (_maj7) return quality.minMaj7;
      if (_min7) return quality.minor;
      return quality.minor;
    }

    if (_maj3) {
      if (_min7) {
        if (_alt) return quality.altered;
        return quality.dominant;
      }
      if (_sharp5) return quality.augmented;
      if (_maj7) return quality.major;
    }

    // enharmonic to b7, tonic, maj3, perf5
    if (_bb3 && _flat5 && _bb7) return quality.dominant;

    return quality.unknown;
  }

  bool get _alt => _flat5 || _sharp5 || _flat2 || _sharp9;

  bool get _bb3 => _sumIntervals(2) == _sizeOf(interval.maj2);

  bool get _bb7 => _seventhInterval == _sizeOf(interval.doubleFlat7);

  bool get _flat2 => _sumIntervals(1) == _sizeOf(interval.min2);

  bool get _flat5 => _sumIntervals(4) == _sizeOf(interval.flat5);

  bool get _maj3 => _sumIntervals(2) == _sizeOf(interval.maj3);

  bool get _maj7 => _seventhInterval == _sizeOf(interval.maj7);

  bool get _min3 => _sumIntervals(2) == _sizeOf(interval.min3);

  bool get _min7 => _seventhInterval == _sizeOf(interval.min7);

  quality get _pentatonicQuality {
    if (_sumIntervals(2) == _sizeOf(interval.maj3)) return quality.major;
    if (_sumIntervals(1) == _sizeOf(interval.min3)) {
      if (_sumIntervals(3) == _sizeOf(interval.flat5))
        return quality.diminished;
      return quality.minor;
    }
    return quality.unknown;
  }

  int get _seventhInterval => intervals.length >= 7
      ? _sumIntervals(6)
      : intervals[intervals.length - 1];

  bool get _sharp5 => _sumIntervals(4) == _sizeOf(interval.sharp5);

  bool get _sharp9 => _sumIntervals(1) == _sizeOf(interval.sharp9);

  @override
  String toString() => '{Scale: $chordQuality $intervals}';

  int _sumIntervals(int size) {
    assert(size >= 1 && size <= intervals.length);
    return intervals.take(size).reduce((i, j) => i + j);
  }
}
