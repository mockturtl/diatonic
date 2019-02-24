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
      expect(key.notesFor(Major.ionian, 'C'), equals(C_ionian));
      expect(key2.notesFor(Major.ionian, 'C'), equals(C_ionian));
    });

    test('D dorian', () {
      expect(key.notesFor(Major.dorian, 'D'), equals(D_dorian));
      expect(key2.notesFor(Major.dorian, 'D'), equals(D_dorian));
    });

    test('E phrygian', () {
      expect(key.notesFor(Major.phrygian, 'E'), equals(E_phrygian));
      expect(key2.notesFor(Major.phrygian, 'E'), equals(E_phrygian));
    });

    test('F lydian', () {
      expect(key.notesFor(Major.lydian, 'F'), equals(F_lydian));
      expect(key2.notesFor(Major.lydian, 'F'), equals(F_lydian));
    });

    test('G mixolydian', () {
      expect(key.notesFor(Major.mixolydian, 'G'), equals(G_mixolydian));
      expect(key2.notesFor(Major.mixolydian, 'G'), equals(G_mixolydian));
    });

    test('A aeolian', () {
      expect(key.notesFor(Major.aeolian, 'A'), equals(A_aeolian));
      expect(key2.notesFor(Major.aeolian, 'A'), equals(A_aeolian));
    });

    test('B locrian', () {
      expect(key.notesFor(Major.locrian, 'B'), equals(B_locrian));
      expect(key2.notesFor(Major.locrian, 'B'), equals(B_locrian));
    });
  });

  group('Gmaj modes', () {
    const key = MajorKeySharp(keySharp.G);
    test('G ionian',
        () => expect(key.notesFor(Major.ionian, 'G'), equals(G_ionian)));

    test('A dorian',
        () => expect(key.notesFor(Major.dorian, 'A'), equals(A_dorian)));

    test('B phrygian',
        () => expect(key.notesFor(Major.phrygian, 'B'), equals(B_phrygian)));

    test('C lydian',
        () => expect(key.notesFor(Major.lydian, 'C'), equals(C_lydian)));

    test(
        'D mixolydian',
        () =>
            expect(key.notesFor(Major.mixolydian, 'D'), equals(D_mixolydian)));

    test('E aeolian',
        () => expect(key.notesFor(Major.aeolian, 'E'), equals(E_aeolian)));

    test(
        'F# locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'F#'), equals(Fsharp_locrian)));
  });

  group('Dmaj modes', () {
    const key = MajorKeySharp(keySharp.D);
    test('D ionian',
        () => expect(key.notesFor(Major.ionian, 'D'), equals(D_ionian)));

    test('E dorian',
        () => expect(key.notesFor(Major.dorian, 'E'), equals(E_dorian)));

    test(
        'F# phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'F#'), equals(Fsharp_phrygian)));

    test('G lydian',
        () => expect(key.notesFor(Major.lydian, 'G'), equals(G_lydian)));

    test(
        'A mixolydian',
        () =>
            expect(key.notesFor(Major.mixolydian, 'A'), equals(A_mixolydian)));

    test('B aeolian',
        () => expect(key.notesFor(Major.aeolian, 'B'), equals(B_aeolian)));

    test(
        'C# locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'C#'), equals(Csharp_locrian)));
  });

  group('Amaj modes', () {
    const key = MajorKeySharp(keySharp.A);
    test('A ionian',
        () => expect(key.notesFor(Major.ionian, 'A'), equals(A_ionian)));

    test('B dorian',
        () => expect(key.notesFor(Major.dorian, 'B'), equals(B_dorian)));

    test(
        'C# phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'C#'), equals(Csharp_phrygian)));

    test('D lydian',
        () => expect(key.notesFor(Major.lydian, 'D'), equals(D_lydian)));

    test(
        'E mixolydian',
        () =>
            expect(key.notesFor(Major.mixolydian, 'E'), equals(E_mixolydian)));

    test(
        'F# aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'F#'), equals(Fsharp_aeolian)));

    test(
        'G# locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'G#'), equals(Gsharp_locrian)));
  });

  group('Emaj modes', () {
    const key = MajorKeySharp(keySharp.E);
    test('E ionian',
        () => expect(key.notesFor(Major.ionian, 'E'), equals(E_ionian)));

    test('F# dorian',
        () => expect(key.notesFor(Major.dorian, 'F#'), equals(Fsharp_dorian)));

    test(
        'G# phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'G#'), equals(Gsharp_phrygian)));

    test('A lydian',
        () => expect(key.notesFor(Major.lydian, 'A'), equals(A_lydian)));

    test(
        'B mixolydian',
        () =>
            expect(key.notesFor(Major.mixolydian, 'B'), equals(B_mixolydian)));

    test(
        'C# aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'C#'), equals(Csharp_aeolian)));

    test(
        'D# locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'D#'), equals(Dsharp_locrian)));
  });

  group('Bmaj modes', () {
    const key = MajorKeySharp(keySharp.B);
    test('B ionian',
        () => expect(key.notesFor(Major.ionian, 'B'), equals(B_ionian)));

    test('C# dorian',
        () => expect(key.notesFor(Major.dorian, 'C#'), equals(Csharp_dorian)));

    test(
        'D# phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'D#'), equals(Dsharp_phrygian)));

    test('E lydian',
        () => expect(key.notesFor(Major.lydian, 'E'), equals(E_lydian)));

    test(
        'F# mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'F#'), equals(Fsharp_mixolydian)));

    test(
        'G# aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'G#'), equals(Gsharp_aeolian)));

    test(
        'A# locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'A#'), equals(Asharp_locrian)));
  });

  group('F#maj modes', () {
    const key = MajorKeySharp(keySharp.Fsharp);
    test('F# ionian',
        () => expect(key.notesFor(Major.ionian, 'F#'), equals(Fsharp_ionian)));

    test('G# dorian',
        () => expect(key.notesFor(Major.dorian, 'G#'), equals(Gsharp_dorian)));

    test(
        'A# phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'A#'), equals(Asharp_phrygian)));

    test('B lydian',
        () => expect(key.notesFor(Major.lydian, 'B'), equals(B_lydian)));

    test(
        'C# mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'C#'), equals(Csharp_mixolydian)));

    test(
        'D# aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'D#'), equals(Dsharp_aeolian)));

    test(
        'E# locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'E#'), equals(Esharp_locrian)));
  });

  group('C#maj modes', () {
    const key = MajorKeySharp(keySharp.Csharp);
    test('C# ionian',
        () => expect(key.notesFor(Major.ionian, 'C#'), equals(Csharp_ionian)));

    test('D# dorian',
        () => expect(key.notesFor(Major.dorian, 'D#'), equals(Dsharp_dorian)));

    test(
        'E# phrygian',
        () => expect(
            key.notesFor(Major.phrygian, 'E#'), equals(Esharp_phrygian)));

    test('F# lydian',
        () => expect(key.notesFor(Major.lydian, 'F#'), equals(Fsharp_lydian)));

    test(
        'G# mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'G#'), equals(Gsharp_mixolydian)));

    test(
        'A# aeolian',
        () =>
            expect(key.notesFor(Major.aeolian, 'A#'), equals(Asharp_aeolian)));

    test(
        'B# locrian',
        () =>
            expect(key.notesFor(Major.locrian, 'B#'), equals(Bsharp_locrian)));
  });

  group('Fmaj modes', () {
    const key = MajorKeyFlat(keyFlat.F);
    test('F ionian',
        () => expect(key.notesFor(Major.ionian, 'F'), equals(F_ionian)));

    test('G dorian',
        () => expect(key.notesFor(Major.dorian, 'G'), equals(G_dorian)));

    test('A phrygian',
        () => expect(key.notesFor(Major.phrygian, 'A'), equals(A_phrygian)));

    test('Bb lydian',
        () => expect(key.notesFor(Major.lydian, 'Bb'), equals(Bb_lydian)));

    test(
        'C mixolydian',
        () =>
            expect(key.notesFor(Major.mixolydian, 'C'), equals(C_mixolydian)));

    test('D aeolian',
        () => expect(key.notesFor(Major.aeolian, 'D'), equals(D_aeolian)));

    test('E locrian',
        () => expect(key.notesFor(Major.locrian, 'E'), equals(E_locrian)));
  });

  group('Bbmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Bb);
    test('Bb ionian',
        () => expect(key.notesFor(Major.ionian, 'Bb'), equals(Bb_ionian)));

    test('C dorian',
        () => expect(key.notesFor(Major.dorian, 'C'), equals(C_dorian)));

    test('D phrygian',
        () => expect(key.notesFor(Major.phrygian, 'D'), equals(D_phrygian)));

    test('Eb lydian',
        () => expect(key.notesFor(Major.lydian, 'Eb'), equals(Eb_lydian)));

    test(
        'F mixolydian',
        () =>
            expect(key.notesFor(Major.mixolydian, 'F'), equals(F_mixolydian)));

    test('G aeolian',
        () => expect(key.notesFor(Major.aeolian, 'G'), equals(G_aeolian)));

    test('A locrian',
        () => expect(key.notesFor(Major.locrian, 'A'), equals(A_locrian)));
  });

  group('Ebmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Eb);
    test('Eb ionian',
        () => expect(key.notesFor(Major.ionian, 'Eb'), equals(Eb_ionian)));

    test('F dorian',
        () => expect(key.notesFor(Major.dorian, 'F'), equals(F_dorian)));

    test('G phrygian',
        () => expect(key.notesFor(Major.phrygian, 'G'), equals(G_phrygian)));

    test('Ab lydian',
        () => expect(key.notesFor(Major.lydian, 'Ab'), equals(Ab_lydian)));

    test(
        'Bb mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'Bb'), equals(Bb_mixolydian)));

    test('C aeolian',
        () => expect(key.notesFor(Major.aeolian, 'C'), equals(C_aeolian)));

    test('D locrian',
        () => expect(key.notesFor(Major.locrian, 'D'), equals(D_locrian)));
  });

  group('Abmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Ab);
    test('Ab ionian',
        () => expect(key.notesFor(Major.ionian, 'Ab'), equals(Ab_ionian)));

    test('Bb dorian',
        () => expect(key.notesFor(Major.dorian, 'Bb'), equals(Bb_dorian)));

    test('C phrygian',
        () => expect(key.notesFor(Major.phrygian, 'C'), equals(C_phrygian)));

    test('Db lydian',
        () => expect(key.notesFor(Major.lydian, 'Db'), equals(Db_lydian)));

    test(
        'Eb mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'Eb'), equals(Eb_mixolydian)));

    test('F aeolian',
        () => expect(key.notesFor(Major.aeolian, 'F'), equals(F_aeolian)));

    test('G locrian',
        () => expect(key.notesFor(Major.locrian, 'G'), equals(G_locrian)));
  });

  group('Dbmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Db);
    test('Db ionian',
        () => expect(key.notesFor(Major.ionian, 'Db'), equals(Db_ionian)));

    test('Eb dorian',
        () => expect(key.notesFor(Major.dorian, 'Eb'), equals(Eb_dorian)));

    test('F phrygian',
        () => expect(key.notesFor(Major.phrygian, 'F'), equals(F_phrygian)));

    test('Gb lydian',
        () => expect(key.notesFor(Major.lydian, 'Gb'), equals(Gb_lydian)));

    test(
        'Ab mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'Ab'), equals(Ab_mixolydian)));

    test('Bb aeolian',
        () => expect(key.notesFor(Major.aeolian, 'Bb'), equals(Bb_aeolian)));

    test('C locrian',
        () => expect(key.notesFor(Major.locrian, 'C'), equals(C_locrian)));
  });

  group('Gbmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Gb);
    test('Gb ionian',
        () => expect(key.notesFor(Major.ionian, 'Gb'), equals(Gb_ionian)));

    test('Ab dorian',
        () => expect(key.notesFor(Major.dorian, 'Ab'), equals(Ab_dorian)));

    test('Bb phrygian',
        () => expect(key.notesFor(Major.phrygian, 'Bb'), equals(Bb_phrygian)));

    test('Cb lydian',
        () => expect(key.notesFor(Major.lydian, 'Cb'), equals(Cb_lydian)));

    test(
        'Db mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'Db'), equals(Db_mixolydian)));

    test('Eb aeolian',
        () => expect(key.notesFor(Major.aeolian, 'Eb'), equals(Eb_aeolian)));

    test('F locrian',
        () => expect(key.notesFor(Major.locrian, 'F'), equals(F_locrian)));
  });

  group('Cbmaj modes', () {
    const key = MajorKeyFlat(keyFlat.Cb);
    test('Cb ionian',
        () => expect(key.notesFor(Major.ionian, 'Cb'), equals(Cb_ionian)));

    test('Db dorian',
        () => expect(key.notesFor(Major.dorian, 'Db'), equals(Db_dorian)));

    test('Eb phrygian',
        () => expect(key.notesFor(Major.phrygian, 'Eb'), equals(Eb_phrygian)));

    test('Fb lydian',
        () => expect(key.notesFor(Major.lydian, 'Fb'), equals(Fb_lydian)));

    test(
        'Gb mixolydian',
        () => expect(
            key.notesFor(Major.mixolydian, 'Gb'), equals(Gb_mixolydian)));

    test('Ab aeolian',
        () => expect(key.notesFor(Major.aeolian, 'Ab'), equals(Ab_aeolian)));

    test('Bb locrian',
        () => expect(key.notesFor(Major.locrian, 'Bb'), equals(Bb_locrian)));
  });
}
