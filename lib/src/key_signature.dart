//ignore_for_file: constant_identifier_names

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
enum KeyFlat {
  C,
  F,
  Bb,
  Eb,
  Ab,
  Db,
  Gb,
  Cb,
}

/// The corresponding relative minor keys of [KeyFlat].
enum KeyFlatMinor {
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
enum KeySharp {
  C,
  G,
  D,
  A,
  E,
  B,
  Fsharp,
  Csharp,
}

/// The corresponding relative minor keys of [KeySharp].
enum KeySharpMinor {
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
  final KeyFlat value;

  const MajorKeyFlat(this.value);

  int get flats => value.index;

  KeyFlatMinor get relativeMinor => KeyFlatMinor.values[value.index];

  @override
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
        return value == KeyFlat.Gb || value == KeyFlat.Cb ? 'Cb' : note;
      case 'E':
        return value == KeyFlat.Cb ? 'Fb' : note;
      default:
        return note;
    }
  }
}

class MajorKeySharp with _ScaleNotes {
  final KeySharp value;

  const MajorKeySharp(this.value);

  KeySharpMinor get relativeMinor => KeySharpMinor.values[value.index];

  int get sharps => value.index;

  @override
  String _present(String note) {
    switch (note) {
      case 'F':
        return value == KeySharp.Csharp || value == KeySharp.Fsharp
            ? 'E#'
            : note;
      case 'C':
        return value == KeySharp.Csharp ? 'B#' : note;
      default:
        return note;
    }
  }
}

class MinorKeyFlat with _ScaleNotes {
  final KeyFlatMinor value;

  const MinorKeyFlat(this.value);

  int get flats => value.index;

  KeyFlat get relativeMajor => KeyFlat.values[value.index];

  @override
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
        return value == KeyFlatMinor.EbMin || value == KeyFlatMinor.AbMin
            ? 'Cb'
            : note;
      case 'E':
        return value == KeyFlatMinor.AbMin ? 'Fb' : note;
      default:
        return note;
    }
  }
}

class MinorKeySharp with _ScaleNotes {
  final KeySharpMinor value;

  const MinorKeySharp(this.value);

  KeySharp get relativeMajor => KeySharp.values[value.index];

  int get sharps => value.index;

  @override
  String _present(String note) {
    switch (note) {
      case 'F':
        return value == KeySharpMinor.AsharpMin ||
                value == KeySharpMinor.DsharpMin
            ? 'E#'
            : note;
      case 'C':
        return value == KeySharpMinor.AsharpMin ? 'B#' : note;
      default:
        return note;
    }
  }
}

mixin _ScaleNotes implements _ScalePresenter {
  List<String> notesFor(Scale scale, String rootNote) {
    var dist = 0;
    var out = [tones[dist]];
    for (var i in scale.intervals) {
      dist += i;
      out.add(tones[dist % tones.length]);
    }
    out.removeLast(); // discard octave

    return out
        .map((n) => (n + _noteIndex[rootNote]!) % tones.length)
        .map((n) => _noteNames[n])
        .map(_present)
        .toList(growable: false);
  }
}

//ignore: one_member_abstracts
abstract interface class _ScalePresenter {
  String _present(String note);
}
