import 'dart:collection';

import 'core.dart';

const _noteIndex = {
  'A': 0,
  'A#': 1,
  'Bb': 1,
  'B': 2,
  'Cb': 2,
  'B#': 3,
  'C': 3,
  'C#': 4,
  'Db': 4,
  'D': 5,
  'D#': 6,
  'Eb': 6,
  'E': 7,
  'Fb': 7,
  'E#': 8,
  'F': 8,
  'F#': 9,
  'Gb': 9,
  'G': 10,
  'G#': 11,
  'Ab': 11,
};

const _noteNames = [
  'A',
  'A#',
  'B',
  'C',
  'C#',
  'D',
  'D#',
  'E',
  'F',
  'F#',
  'G',
  'G#',
];

/// The index is the number of flats in the key signature.
enum keyFlat {
  C,
  F,
  Bb,
  Eb,
  Ab,
  Db,
  Gb,
  Cb,
}

/// The corresponding relative minor keys of [keyFlat].
enum keyFlatMinor {
  Amin,
  Dmin,
  Gmin,
  Cmin,
  Fmin,
  BbMin,
  EbMin,
  AbMin,
}

/// The index is the number of sharps in the key signature.
enum keySharp {
  C,
  G,
  D,
  A,
  E,
  B,
  Fsharp,
  Csharp,
}

/// The corresponding relative minor keys of [keySharp].
enum keySharpMinor {
  Amin,
  Emin,
  Bmin,
  FsharpMin,
  CsharpMin,
  GsharpMin,
  DsharpMin,
  AsharpMin,
}

class MajorKeyFlat with _ScaleNotes {
  final keyFlat value;

  const MajorKeyFlat(this.value);

  int get flats => value.index;

  keyFlatMinor get relativeMinor => keyFlatMinor.values[value.index];

  String _present(String note) {
    switch (note) {
      case 'F#':
        return 'Gb';
      case 'C#':
        return 'Db';
      case 'G#':
        return 'Ab';
      case 'D#':
        return 'Eb';
      case 'A#':
        return 'Bb';
      case 'B':
        return value == keyFlat.Gb || value == keyFlat.Cb ? 'Cb' : note;
      case 'E':
        return value == keyFlat.Cb ? 'Fb' : note;
      default:
        return note;
    }
  }
}

class MajorKeySharp with _ScaleNotes {
  final keySharp value;

  const MajorKeySharp(this.value);

  keySharpMinor get relativeMinor => keySharpMinor.values[value.index];

  int get sharps => value.index;

  String _present(String note) {
    switch (note) {
      case 'F':
        return value == keySharp.Csharp || value == keySharp.Fsharp
            ? 'E#'
            : note;
      case 'C':
        return value == keySharp.Csharp ? 'B#' : note;
      default:
        return note;
    }
  }
}

class MinorKeyFlat with _ScaleNotes {
  final keyFlatMinor value;

  const MinorKeyFlat(this.value);

  int get flats => value.index;

  keyFlat get relativeMajor => keyFlat.values[value.index];

  String _present(String note) {
    switch (note) {
      case 'F#':
        return 'Gb';
      case 'C#':
        return 'Db';
      case 'G#':
        return 'Ab';
      case 'D#':
        return 'Eb';
      case 'A#':
        return 'Bb';
      case 'B':
        return value == keyFlatMinor.EbMin || value == keyFlatMinor.AbMin
            ? 'Cb'
            : note;
      case 'E':
        return value == keyFlatMinor.AbMin ? 'Fb' : note;
      default:
        return note;
    }
  }
}

class MinorKeySharp with _ScaleNotes {
  final keySharpMinor value;

  const MinorKeySharp(this.value);

  keySharp get relativeMajor => keySharp.values[value.index];

  int get sharps => value.index;

  String _present(String note) {
    switch (note) {
      case 'F':
        return value == keySharpMinor.AsharpMin ||
                value == keySharpMinor.DsharpMin
            ? 'E#'
            : note;
      case 'C':
        return value == keySharpMinor.AsharpMin ? 'B#' : note;
      default:
        return note;
    }
  }
}

class Notes {
  final UnmodifiableListView<String> _list;
  final quality _chordQuality;
  final UnmodifiableMapView<int, String> _map;

  Notes(List<String> notes, this._chordQuality)
      : assert(notes.isNotEmpty),
        _map = UnmodifiableMapView(
            notes.asMap().map((i, n) => MapEntry(i + 1, n))),
        _list = UnmodifiableListView(notes);

  List<String> get asList => _list;

  String get chordSymbol {
    switch (_chordQuality) {
      case quality.major:
        return 'Maj7';
      case quality.minor:
        return 'min7';
      case quality.dominant:
        return '7';
      default:
        return '$_chordQuality';
    }
  }

  String get eleventh => _map[4];

  String get fifth => _map[5];

  String get ninth => _map[2];

  String get root => _map[1];

  String get seventh => _map[7];

  String get tetrad => '$triad $seventh';

  String get third => _map[3];

  String get thirteenth => _map[6];

  String get triad => '$root $third $fifth';
}

mixin _ScaleNotes implements _ScalePresenter {
  Notes notesFor(Scale scale, String rootNote) {
    var dist = 0;
    final out = [tones[dist]];
    for (var i in scale.intervals) {
      dist += i;
      out.add(tones[dist % tones.length]);
    }
    out.removeLast(); // discard octave

    var notes = out
        .map((n) => (n + _noteIndex[rootNote]) % tones.length)
        .map((n) => _noteNames[n])
        .map(_present)
        .toList(growable: false);
    return Notes(notes, scale.chordQuality);
  }
}

abstract class _ScalePresenter {
  String _present(String note);
}
