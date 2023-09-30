//ignore_for_file: prefer_const_constructors
import 'package:diatonic/diatonic.dart'
    show
        KeyFlat,
        KeyFlatMinor,
        KeySharp,
        KeySharpMinor,
        MajorKeyFlat,
        MajorKeySharp,
        MinorKeyFlat,
        MinorKeySharp;
import 'package:test/test.dart';

void main() {
  test('key of C has no sharps or flats', () {
    expect(MajorKeySharp(KeySharp.C).sharps, equals(0));
    expect(MajorKeyFlat(KeyFlat.C).flats, equals(0));
  });

  test('key of G has 1 sharp',
      () => expect(MajorKeySharp(KeySharp.G).sharps, equals(1)));

  test('key of D has 2 sharps',
      () => expect(MajorKeySharp(KeySharp.D).sharps, equals(2)));

  test('key of A has 3 sharps',
      () => expect(MajorKeySharp(KeySharp.A).sharps, equals(3)));

  test('key of E has 4 sharps',
      () => expect(MajorKeySharp(KeySharp.E).sharps, equals(4)));

  test('key of B has 5 sharps',
      () => expect(MajorKeySharp(KeySharp.B).sharps, equals(5)));

  test('key of F# has 6 sharps',
      () => expect(MajorKeySharp(KeySharp.Fsharp).sharps, equals(6)));

  test('key of C# has 7 sharps',
      () => expect(MajorKeySharp(KeySharp.Csharp).sharps, equals(7)));

  test('key of Am has no sharps or flats', () {
    expect(MinorKeySharp(KeySharpMinor.Amin).sharps, equals(0));
    expect(MinorKeyFlat(KeyFlatMinor.Amin).flats, equals(0));
  });

  test('key of Em has 1 sharp',
      () => expect(MinorKeySharp(KeySharpMinor.Emin).sharps, equals(1)));

  test('key of Bm has 2 sharps',
      () => expect(MinorKeySharp(KeySharpMinor.Bmin).sharps, equals(2)));

  test('key of F#m has 3 sharps',
      () => expect(MinorKeySharp(KeySharpMinor.FsharpMin).sharps, equals(3)));

  test('key of C#m has 4 sharps',
      () => expect(MinorKeySharp(KeySharpMinor.CsharpMin).sharps, equals(4)));

  test('key of G#m has 5 sharps',
      () => expect(MinorKeySharp(KeySharpMinor.GsharpMin).sharps, equals(5)));

  test('key of D#m has 6 sharps',
      () => expect(MinorKeySharp(KeySharpMinor.DsharpMin).sharps, equals(6)));

  test('key of A#m has 7 sharps',
      () => expect(MinorKeySharp(KeySharpMinor.AsharpMin).sharps, equals(7)));

  test('key of F has 1 flat',
      () => expect(MajorKeyFlat(KeyFlat.F).flats, equals(1)));

  test('key of Bb has 2 flats',
      () => expect(MajorKeyFlat(KeyFlat.Bb).flats, equals(2)));

  test('key of Eb has 3 flats',
      () => expect(MajorKeyFlat(KeyFlat.Eb).flats, equals(3)));

  test('key of Ab has 4 flats',
      () => expect(MajorKeyFlat(KeyFlat.Ab).flats, equals(4)));

  test('key of Db has 5 flats',
      () => expect(MajorKeyFlat(KeyFlat.Db).flats, equals(5)));

  test('key of Gb has 6 flats',
      () => expect(MajorKeyFlat(KeyFlat.Gb).flats, equals(6)));

  test('key of Cb has 7 flats',
      () => expect(MajorKeyFlat(KeyFlat.Cb).flats, equals(7)));

  test('key of Dm has 1 flat',
      () => expect(MinorKeyFlat(KeyFlatMinor.Dmin).flats, equals(1)));

  test('key of Gm has 2 flats',
      () => expect(MinorKeyFlat(KeyFlatMinor.Gmin).flats, equals(2)));

  test('key of Cm has 3 flats',
      () => expect(MinorKeyFlat(KeyFlatMinor.Cmin).flats, equals(3)));

  test('key of Fm has 4 flats',
      () => expect(MinorKeyFlat(KeyFlatMinor.Fmin).flats, equals(4)));

  test('key of Bbm has 5 flats',
      () => expect(MinorKeyFlat(KeyFlatMinor.BbMin).flats, equals(5)));

  test('key of Ebm has 6 flats',
      () => expect(MinorKeyFlat(KeyFlatMinor.EbMin).flats, equals(6)));

  test('key of Abm has 7 flats',
      () => expect(MinorKeyFlat(KeyFlatMinor.AbMin).flats, equals(7)));

  test('relative minor of C is Am', () {
    expect(MajorKeySharp(KeySharp.C).relativeMinor, equals(KeySharpMinor.Amin));
    expect(MinorKeySharp(KeySharpMinor.Amin).relativeMajor, equals(KeySharp.C));
  });

  test('relative minor of G is Em', () {
    expect(MajorKeySharp(KeySharp.G).relativeMinor, equals(KeySharpMinor.Emin));
    expect(MinorKeySharp(KeySharpMinor.Emin).relativeMajor, equals(KeySharp.G));
  });

  test('relative minor of D is Bm', () {
    expect(MajorKeySharp(KeySharp.D).relativeMinor, equals(KeySharpMinor.Bmin));
    expect(MinorKeySharp(KeySharpMinor.Bmin).relativeMajor, equals(KeySharp.D));
  });

  test('relative minor of A is F#m', () {
    expect(MajorKeySharp(KeySharp.A).relativeMinor,
        equals(KeySharpMinor.FsharpMin));
    expect(MinorKeySharp(KeySharpMinor.FsharpMin).relativeMajor,
        equals(KeySharp.A));
  });

  test('relative minor of E is C#m', () {
    expect(MajorKeySharp(KeySharp.E).relativeMinor,
        equals(KeySharpMinor.CsharpMin));
    expect(MinorKeySharp(KeySharpMinor.CsharpMin).relativeMajor,
        equals(KeySharp.E));
  });

  test('relative minor of B is G#m', () {
    expect(MajorKeySharp(KeySharp.B).relativeMinor,
        equals(KeySharpMinor.GsharpMin));
    expect(MinorKeySharp(KeySharpMinor.GsharpMin).relativeMajor,
        equals(KeySharp.B));
  });

  test('relative minor of F# is D#m', () {
    expect(MajorKeySharp(KeySharp.Fsharp).relativeMinor,
        equals(KeySharpMinor.DsharpMin));
    expect(MinorKeySharp(KeySharpMinor.DsharpMin).relativeMajor,
        equals(KeySharp.Fsharp));
  });

  test('relative minor of C# is A#m', () {
    expect(MajorKeySharp(KeySharp.Csharp).relativeMinor,
        equals(KeySharpMinor.AsharpMin));
    expect(MinorKeySharp(KeySharpMinor.AsharpMin).relativeMajor,
        equals(KeySharp.Csharp));
  });

  test('relative minor of F is Dm', () {
    expect(MajorKeyFlat(KeyFlat.F).relativeMinor, equals(KeyFlatMinor.Dmin));
    expect(MinorKeyFlat(KeyFlatMinor.Dmin).relativeMajor, equals(KeyFlat.F));
  });

  test('relative minor of Bb is Gm', () {
    expect(MajorKeyFlat(KeyFlat.Bb).relativeMinor, equals(KeyFlatMinor.Gmin));
    expect(MinorKeyFlat(KeyFlatMinor.Gmin).relativeMajor, equals(KeyFlat.Bb));
  });

  test('relative minor of Eb is Cm', () {
    expect(MajorKeyFlat(KeyFlat.Eb).relativeMinor, equals(KeyFlatMinor.Cmin));
    expect(MinorKeyFlat(KeyFlatMinor.Cmin).relativeMajor, equals(KeyFlat.Eb));
  });

  test('relative minor of Ab is Fm', () {
    expect(MajorKeyFlat(KeyFlat.Ab).relativeMinor, equals(KeyFlatMinor.Fmin));
    expect(MinorKeyFlat(KeyFlatMinor.Fmin).relativeMajor, equals(KeyFlat.Ab));
  });

  test('relative minor of Db is Bbm', () {
    expect(MajorKeyFlat(KeyFlat.Db).relativeMinor, equals(KeyFlatMinor.BbMin));
    expect(MinorKeyFlat(KeyFlatMinor.BbMin).relativeMajor, equals(KeyFlat.Db));
  });

  test('relative minor of Gb is Ebm', () {
    expect(MajorKeyFlat(KeyFlat.Gb).relativeMinor, equals(KeyFlatMinor.EbMin));
    expect(MinorKeyFlat(KeyFlatMinor.EbMin).relativeMajor, equals(KeyFlat.Gb));
  });

  test('relative minor of Cb is Abm', () {
    expect(MajorKeyFlat(KeyFlat.Cb).relativeMinor, equals(KeyFlatMinor.AbMin));
    expect(MinorKeyFlat(KeyFlatMinor.AbMin).relativeMajor, equals(KeyFlat.Cb));
  });
}

// major
//[C, D, E, F, G, A, B]
//[G, A, B, C, D, E, F#]
//[D, E, F#, G, A, B, C#]
//[A, B, C#, D, E, F#, G#]
//[E, F#, G#, A, B, C#, D#]
//[B, C#, D#, E, F#, G#, A#]
//[F#, G#, A#, B, C#, D#, E#]
//[C#, D#, E#, F#, G#, A#, B#]
//
// minor
//[A, B, C, D, E, F, G]
//[E, F#, G, A, B, C, D]
//[B, C#, D, E, F#, G, A]
//[F#, G#, A, B, C#, D, E]
//[C#, D#, E, F#, G#, A, B]
//[G#, A#, B, C#, D#, E, F#]
//[D#, E#, F#, G#, A#, B, C#]
//[A#, B#, C#, D#, E#, F#, G#]
//
// major
//[C, D, E, F, G, A, B]
//[F, G, A, Bb, C, D, E]
//[Bb, C, D, Eb, F, G, A]
//[Eb, F, G, Ab, Bb, C, D]
//[Ab, Bb, C, Db, Eb, F, G]
//[Db, Eb, F, Gb, Ab, Bb, C]
//[Gb, Ab, Bb, Cb, Db, Eb, F]
//[Cb, Db, Eb, Fb, Gb, Ab, Bb]
//
// minor
//[A, B, C, D, E, F, G]
//[D, E, F, G, A, Bb, C]
//[G, A, Bb, C, D, Eb, F]
//[C, D, Eb, F, G, Ab, Bb]
//[F, G, Ab, Bb, C, Db, Eb]
//[Bb, C, Db, Eb, F, Gb, Ab]
//[Eb, F, Gb, Ab, Bb, Cb, Db]
//[Ab, Bb, Cb, Db, Eb, Fb, Gb]
