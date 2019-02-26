import 'package:diatonic/diatonic.dart'
    show quality, Major, MajorKeyFlat, MajorKeySharp, keySharp, keyFlat;
import 'package:test/test.dart';

import 'fixtures/major_modes.dart';

void main() {
  group('major scale modes: chord qualities:', () {
    test('IΔ', () {
      expect(Major.ionian.chordQuality, equals(quality.major));
    });
    test('ii7', () {
      expect(Major.dorian.chordQuality, equals(quality.minor));
    });
    test('iii7', () {
      expect(Major.phrygian.chordQuality, equals(quality.minor));
    });
    test('IVΔ', () {
      expect(Major.lydian.chordQuality, equals(quality.major));
    });
    test('V7', () {
      expect(Major.mixolydian.chordQuality, equals(quality.dominant));
    });
    test('vi7', () {
      expect(Major.aeolian.chordQuality, equals(quality.minor));
    });
    test('vii7b5', () {
      expect(Major.locrian.chordQuality, equals(quality.min7b5));
    });
  });

  group('Cmaj modes', () {
    const key = MajorKeySharp(keySharp.C);
    const key2 = MajorKeyFlat(keyFlat.C);
    test('C ionian', () {
      expect(key.notesFor(Major.ionian, 'C').asList, equals(C_ionian));
      expect(key2.notesFor(Major.ionian, 'C').asList, equals(C_ionian));
    });

    test('D dorian', () {
      expect(key.notesFor(Major.dorian, 'D').asList, equals(D_dorian));
      expect(key2.notesFor(Major.dorian, 'D').asList, equals(D_dorian));
    });

    test('E phrygian', () {
      expect(key.notesFor(Major.phrygian, 'E').asList, equals(E_phrygian));
      expect(key2.notesFor(Major.phrygian, 'E').asList, equals(E_phrygian));
    });

    test('F lydian', () {
      expect(key.notesFor(Major.lydian, 'F').asList, equals(F_lydian));
      expect(key2.notesFor(Major.lydian, 'F').asList, equals(F_lydian));
    });

    test('G mixolydian', () {
      expect(key.notesFor(Major.mixolydian, 'G').asList, equals(G_mixolydian));
      expect(key2.notesFor(Major.mixolydian, 'G').asList, equals(G_mixolydian));
    });

    test('A aeolian', () {
      expect(key.notesFor(Major.aeolian, 'A').asList, equals(A_aeolian));
      expect(key2.notesFor(Major.aeolian, 'A').asList, equals(A_aeolian));
    });

    test('B locrian', () {
      expect(key.notesFor(Major.locrian, 'B').asList, equals(B_locrian));
      expect(key2.notesFor(Major.locrian, 'B').asList, equals(B_locrian));
    });
  });

  group('Gmaj modes', () {
    const key = MajorKeySharp(keySharp.G);
    test('G ionian',
        () => expect(key.notesFor(Major.ionian, 'G').asList, equals(G_ionian)));

    test('A dorian',
        () => expect(key.notesFor(Major.dorian, 'A').asList, equals(A_dorian)));

    test(
        'B phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'B').asList, equals(B_phrygian)));

    test('C lydian',
        () => expect(key.notesFor(Major.lydian, 'C').asList, equals(C_lydian)));

    test(
        'D mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'D').asList, equals(D_mixolydian)));

    test(
        'E aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'E').asList, equals(E_aeolian)));

    test(
        'F# locrian',
        () => expect(
            key.notesFor(Major.locrian, 'F#').asList, equals(Fsharp_locrian)));
  });

  group('Dmaj modes', () {
    const key = MajorKeySharp(keySharp.D);
    test('D ionian',
        () => expect(key.notesFor(Major.ionian, 'D').asList, equals(D_ionian)));

    test('E dorian',
        () => expect(key.notesFor(Major.dorian, 'E').asList, equals(E_dorian)));

    test(
        'F# phrygian',
        () => expect(key.notesFor(Major.phrygian, 'F#').asList,
            equals(Fsharp_phrygian)));

    test('G lydian',
        () => expect(key.notesFor(Major.lydian, 'G').asList, equals(G_lydian)));

    test(
        'A mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'A').asList, equals(A_mixolydian)));

    test(
        'B aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'B').asList, equals(B_aeolian)));

    test(
        'C# locrian',
        () => expect(
            key.notesFor(Major.locrian, 'C#').asList, equals(Csharp_locrian)));
  });

  group('Amaj modes', () {
    const key = MajorKeySharp(keySharp.A);
    test('A ionian',
        () => expect(key.notesFor(Major.ionian, 'A').asList, equals(A_ionian)));

    test('B dorian',
        () => expect(key.notesFor(Major.dorian, 'B').asList, equals(B_dorian)));

    test(
        'C# phrygian',
        () => expect(key.notesFor(Major.phrygian, 'C#').asList,
            equals(Csharp_phrygian)));

    test('D lydian',
        () => expect(key.notesFor(Major.lydian, 'D').asList, equals(D_lydian)));

    test(
        'E mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'E').asList, equals(E_mixolydian)));

    test(
        'F# aeolian',
        () => expect(
            key.notesFor(Major.aeolian, 'F#').asList, equals(Fsharp_aeolian)));

    test(
        'G# locrian',
        () => expect(
            key.notesFor(Major.locrian, 'G#').asList, equals(Gsharp_locrian)));
  });

  group('Emaj modes', () {
    const key = MajorKeySharp(keySharp.E);
    test('E ionian',
        () => expect(key.notesFor(Major.ionian, 'E').asList, equals(E_ionian)));

    test(
        'F# dorian',
        () => expect(
            key.notesFor(Major.dorian, 'F#').asList, equals(Fsharp_dorian)));

    test(
        'G# phrygian',
        () => expect(key.notesFor(Major.phrygian, 'G#').asList,
            equals(Gsharp_phrygian)));

    test('A lydian',
        () => expect(key.notesFor(Major.lydian, 'A').asList, equals(A_lydian)));

    test(
        'B mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'B').asList, equals(B_mixolydian)));

    test(
        'C# aeolian',
        () => expect(
            key.notesFor(Major.aeolian, 'C#').asList, equals(Csharp_aeolian)));

    test(
        'D# locrian',
        () => expect(
            key.notesFor(Major.locrian, 'D#').asList, equals(Dsharp_locrian)));
  });

  group('Bmaj modes', () {
    const key = MajorKeySharp(keySharp.B);
    test('B ionian',
        () => expect(key.notesFor(Major.ionian, 'B').asList, equals(B_ionian)));

    test(
        'C# dorian',
        () => expect(
            key.notesFor(Major.dorian, 'C#').asList, equals(Csharp_dorian)));

    test(
        'D# phrygian',
        () => expect(key.notesFor(Major.phrygian, 'D#').asList,
            equals(Dsharp_phrygian)));

    test('E lydian',
        () => expect(key.notesFor(Major.lydian, 'E').asList, equals(E_lydian)));

    test(
        'F# mixolydian',
        () => expect(key.notesFor(Major.mixolydian, 'F#').asList,
            equals(Fsharp_mixolydian)));

    test(
        'G# aeolian',
        () => expect(
            key.notesFor(Major.aeolian, 'G#').asList, equals(Gsharp_aeolian)));

    test(
        'A# locrian',
        () => expect(
            key.notesFor(Major.locrian, 'A#').asList, equals(Asharp_locrian)));
  });

  group('F#maj modes', () {
    const key = MajorKeySharp(keySharp.Fsharp);
    test(
        'F# ionian',
        () => expect(
            key.notesFor(Major.ionian, 'F#').asList, equals(Fsharp_ionian)));

    test(
        'G# dorian',
        () => expect(
            key.notesFor(Major.dorian, 'G#').asList, equals(Gsharp_dorian)));

    test(
        'A# phrygian',
        () => expect(key.notesFor(Major.phrygian, 'A#').asList,
            equals(Asharp_phrygian)));

    test('B lydian',
        () => expect(key.notesFor(Major.lydian, 'B').asList, equals(B_lydian)));

    test(
        'C# mixolydian',
        () => expect(key.notesFor(Major.mixolydian, 'C#').asList,
            equals(Csharp_mixolydian)));

    test(
        'D# aeolian',
        () => expect(
            key.notesFor(Major.aeolian, 'D#').asList, equals(Dsharp_aeolian)));

    test(
        'E# locrian',
        () => expect(
            key.notesFor(Major.locrian, 'E#').asList, equals(Esharp_locrian)));
  });

  group('C#maj modes', () {
    const key = MajorKeySharp(keySharp.Csharp);
    test(
        'C# ionian',
        () => expect(
            key.notesFor(Major.ionian, 'C#').asList, equals(Csharp_ionian)));

    test(
        'D# dorian',
        () => expect(
            key.notesFor(Major.dorian, 'D#').asList, equals(Dsharp_dorian)));

    test(
        'E# phrygian',
        () => expect(key.notesFor(Major.phrygian, 'E#').asList,
            equals(Esharp_phrygian)));

    test(
        'F# lydian',
        () => expect(
            key.notesFor(Major.lydian, 'F#').asList, equals(Fsharp_lydian)));

    test(
        'G# mixolydian',
        () => expect(key.notesFor(Major.mixolydian, 'G#').asList,
            equals(Gsharp_mixolydian)));

    test(
        'A# aeolian',
        () => expect(
            key.notesFor(Major.aeolian, 'A#').asList, equals(Asharp_aeolian)));

    test(
        'B# locrian',
        () => expect(
            key.notesFor(Major.locrian, 'B#').asList, equals(Bsharp_locrian)));
  });

  group('Fmaj modes', () {
    const key = MajorKeyFlat(keyFlat.F);
    test('F ionian',
        () => expect(key.notesFor(Major.ionian, 'F').asList, equals(F_ionian)));

    test('G dorian',
        () => expect(key.notesFor(Major.dorian, 'G').asList, equals(G_dorian)));

    test(
        'A phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'A').asList, equals(A_phrygian)));

    test(
        'Bb lydian',
        () =>
            expect(key.notesFor(Major.lydian, 'Bb').asList, equals(Bb_lydian)));

    test(
        'C mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'C').asList, equals(C_mixolydian)));

    test(
        'D aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'D').asList, equals(D_aeolian)));

    test(
        'E locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'E').asList, equals(E_locrian)));
  });

  group('Bbmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Bb);
    test(
        'Bb ionian',
        () =>
            expect(key.notesFor(Major.ionian, 'Bb').asList, equals(Bb_ionian)));

    test('C dorian',
        () => expect(key.notesFor(Major.dorian, 'C').asList, equals(C_dorian)));

    test(
        'D phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'D').asList, equals(D_phrygian)));

    test(
        'Eb lydian',
        () =>
            expect(key.notesFor(Major.lydian, 'Eb').asList, equals(Eb_lydian)));

    test(
        'F mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'F').asList, equals(F_mixolydian)));

    test(
        'G aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'G').asList, equals(G_aeolian)));

    test(
        'A locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'A').asList, equals(A_locrian)));
  });

  group('Ebmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Eb);
    test(
        'Eb ionian',
        () =>
            expect(key.notesFor(Major.ionian, 'Eb').asList, equals(Eb_ionian)));

    test('F dorian',
        () => expect(key.notesFor(Major.dorian, 'F').asList, equals(F_dorian)));

    test(
        'G phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'G').asList, equals(G_phrygian)));

    test(
        'Ab lydian',
        () =>
            expect(key.notesFor(Major.lydian, 'Ab').asList, equals(Ab_lydian)));

    test(
        'Bb mixolydian',
        () => expect(key.notesFor(Major.mixolydian, 'Bb').asList,
            equals(Bb_mixolydian)));

    test(
        'C aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'C').asList, equals(C_aeolian)));

    test(
        'D locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'D').asList, equals(D_locrian)));
  });

  group('Abmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Ab);
    test(
        'Ab ionian',
        () =>
            expect(key.notesFor(Major.ionian, 'Ab').asList, equals(Ab_ionian)));

    test(
        'Bb dorian',
        () =>
            expect(key.notesFor(Major.dorian, 'Bb').asList, equals(Bb_dorian)));

    test(
        'C phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'C').asList, equals(C_phrygian)));

    test(
        'Db lydian',
        () =>
            expect(key.notesFor(Major.lydian, 'Db').asList, equals(Db_lydian)));

    test(
        'Eb mixolydian',
        () => expect(key.notesFor(Major.mixolydian, 'Eb').asList,
            equals(Eb_mixolydian)));

    test(
        'F aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'F').asList, equals(F_aeolian)));

    test(
        'G locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'G').asList, equals(G_locrian)));
  });

  group('Dbmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Db);
    test(
        'Db ionian',
        () =>
            expect(key.notesFor(Major.ionian, 'Db').asList, equals(Db_ionian)));

    test(
        'Eb dorian',
        () =>
            expect(key.notesFor(Major.dorian, 'Eb').asList, equals(Eb_dorian)));

    test(
        'F phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'F').asList, equals(F_phrygian)));

    test(
        'Gb lydian',
        () =>
            expect(key.notesFor(Major.lydian, 'Gb').asList, equals(Gb_lydian)));

    test(
        'Ab mixolydian',
        () => expect(key.notesFor(Major.mixolydian, 'Ab').asList,
            equals(Ab_mixolydian)));

    test(
        'Bb aeolian',
        () => expect(
            key.notesFor(Major.aeolian, 'Bb').asList, equals(Bb_aeolian)));

    test(
        'C locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'C').asList, equals(C_locrian)));
  });

  group('Gbmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Gb);
    test(
        'Gb ionian',
        () =>
            expect(key.notesFor(Major.ionian, 'Gb').asList, equals(Gb_ionian)));

    test(
        'Ab dorian',
        () =>
            expect(key.notesFor(Major.dorian, 'Ab').asList, equals(Ab_dorian)));

    test(
        'Bb phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'Bb').asList, equals(Bb_phrygian)));

    test(
        'Cb lydian',
        () =>
            expect(key.notesFor(Major.lydian, 'Cb').asList, equals(Cb_lydian)));

    test(
        'Db mixolydian',
        () => expect(key.notesFor(Major.mixolydian, 'Db').asList,
            equals(Db_mixolydian)));

    test(
        'Eb aeolian',
        () => expect(
            key.notesFor(Major.aeolian, 'Eb').asList, equals(Eb_aeolian)));

    test(
        'F locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'F').asList, equals(F_locrian)));
  });

  group('Cbmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Cb);
    test(
        'Cb ionian',
        () =>
            expect(key.notesFor(Major.ionian, 'Cb').asList, equals(Cb_ionian)));

    test(
        'Db dorian',
        () =>
            expect(key.notesFor(Major.dorian, 'Db').asList, equals(Db_dorian)));

    test(
        'Eb phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'Eb').asList, equals(Eb_phrygian)));

    test(
        'Fb lydian',
        () =>
            expect(key.notesFor(Major.lydian, 'Fb').asList, equals(Fb_lydian)));

    test(
        'Gb mixolydian',
        () => expect(key.notesFor(Major.mixolydian, 'Gb').asList,
            equals(Gb_mixolydian)));

    test(
        'Ab aeolian',
        () => expect(
            key.notesFor(Major.aeolian, 'Ab').asList, equals(Ab_aeolian)));

    test(
        'Bb locrian',
        () => expect(
            key.notesFor(Major.locrian, 'Bb').asList, equals(Bb_locrian)));
  });
}
