import 'package:diatonic/diatonic.dart'
    show
        MajorKeySharp,
        MajorKeyFlat,
        MinorKeySharp,
        MinorKeyFlat,
        keySharp,
        keyFlat,
        keySharpMinor,
        keyFlatMinor;
import 'package:test/test.dart';

void main() {
  test('key of C has no sharps or flats', () {
    expect(MajorKeySharp(keySharp.C).sharps, equals(0));
    expect(MajorKeyFlat(keyFlat.C).flats, equals(0));
  });

  test('key of G has 1 sharp',
      () => expect(MajorKeySharp(keySharp.G).sharps, equals(1)));

  test('key of D has 2 sharps',
      () => expect(MajorKeySharp(keySharp.D).sharps, equals(2)));

  test('key of A has 3 sharps',
      () => expect(MajorKeySharp(keySharp.A).sharps, equals(3)));

  test('key of E has 4 sharps',
      () => expect(MajorKeySharp(keySharp.E).sharps, equals(4)));

  test('key of B has 5 sharps',
      () => expect(MajorKeySharp(keySharp.B).sharps, equals(5)));

  test('key of F# has 6 sharps',
      () => expect(MajorKeySharp(keySharp.Fsharp).sharps, equals(6)));

  test('key of C# has 7 sharps',
      () => expect(MajorKeySharp(keySharp.Csharp).sharps, equals(7)));

  test('key of Am has no sharps or flats', () {
    expect(MinorKeySharp(keySharpMinor.Amin).sharps, equals(0));
    expect(MinorKeyFlat(keyFlatMinor.Amin).flats, equals(0));
  });

  test('key of Em has 1 sharp',
      () => expect(MinorKeySharp(keySharpMinor.Emin).sharps, equals(1)));

  test('key of Bm has 2 sharps',
      () => expect(MinorKeySharp(keySharpMinor.Bmin).sharps, equals(2)));

  test('key of F#m has 3 sharps',
      () => expect(MinorKeySharp(keySharpMinor.FsharpMin).sharps, equals(3)));

  test('key of C#m has 4 sharps',
      () => expect(MinorKeySharp(keySharpMinor.CsharpMin).sharps, equals(4)));

  test('key of G#m has 5 sharps',
      () => expect(MinorKeySharp(keySharpMinor.GsharpMin).sharps, equals(5)));

  test('key of D#m has 6 sharps',
      () => expect(MinorKeySharp(keySharpMinor.DsharpMin).sharps, equals(6)));

  test('key of A#m has 7 sharps',
      () => expect(MinorKeySharp(keySharpMinor.AsharpMin).sharps, equals(7)));

  test('key of F has 1 flat',
      () => expect(MajorKeyFlat(keyFlat.F).flats, equals(1)));

  test('key of Bb has 2 flats',
      () => expect(MajorKeyFlat(keyFlat.Bb).flats, equals(2)));

  test('key of Eb has 3 flats',
      () => expect(MajorKeyFlat(keyFlat.Eb).flats, equals(3)));

  test('key of Ab has 4 flats',
      () => expect(MajorKeyFlat(keyFlat.Ab).flats, equals(4)));

  test('key of Db has 5 flats',
      () => expect(MajorKeyFlat(keyFlat.Db).flats, equals(5)));

  test('key of Gb has 6 flats',
      () => expect(MajorKeyFlat(keyFlat.Gb).flats, equals(6)));

  test('key of Cb has 7 flats',
      () => expect(MajorKeyFlat(keyFlat.Cb).flats, equals(7)));

  test('key of Dm has 1 flat',
      () => expect(MinorKeyFlat(keyFlatMinor.Dmin).flats, equals(1)));

  test('key of Gm has 2 flats',
      () => expect(MinorKeyFlat(keyFlatMinor.Gmin).flats, equals(2)));

  test('key of Cm has 3 flats',
      () => expect(MinorKeyFlat(keyFlatMinor.Cmin).flats, equals(3)));

  test('key of Fm has 4 flats',
      () => expect(MinorKeyFlat(keyFlatMinor.Fmin).flats, equals(4)));

  test('key of Bbm has 5 flats',
      () => expect(MinorKeyFlat(keyFlatMinor.BbMin).flats, equals(5)));

  test('key of Ebm has 6 flats',
      () => expect(MinorKeyFlat(keyFlatMinor.EbMin).flats, equals(6)));

  test('key of Abm has 7 flats',
      () => expect(MinorKeyFlat(keyFlatMinor.AbMin).flats, equals(7)));

  test('relative minor of C is Am', () {
    expect(MajorKeySharp(keySharp.C).relativeMinor, equals(keySharpMinor.Amin));
    expect(MinorKeySharp(keySharpMinor.Amin).relativeMajor, equals(keySharp.C));
  });

  test('relative minor of G is Em', () {
    expect(MajorKeySharp(keySharp.G).relativeMinor, equals(keySharpMinor.Emin));
    expect(MinorKeySharp(keySharpMinor.Emin).relativeMajor, equals(keySharp.G));
  });

  test('relative minor of D is Bm', () {
    expect(MajorKeySharp(keySharp.D).relativeMinor, equals(keySharpMinor.Bmin));
    expect(MinorKeySharp(keySharpMinor.Bmin).relativeMajor, equals(keySharp.D));
  });

  test('relative minor of A is F#m', () {
    expect(MajorKeySharp(keySharp.A).relativeMinor,
        equals(keySharpMinor.FsharpMin));
    expect(MinorKeySharp(keySharpMinor.FsharpMin).relativeMajor,
        equals(keySharp.A));
  });

  test('relative minor of E is C#m', () {
    expect(MajorKeySharp(keySharp.E).relativeMinor,
        equals(keySharpMinor.CsharpMin));
    expect(MinorKeySharp(keySharpMinor.CsharpMin).relativeMajor,
        equals(keySharp.E));
  });

  test('relative minor of B is G#m', () {
    expect(MajorKeySharp(keySharp.B).relativeMinor,
        equals(keySharpMinor.GsharpMin));
    expect(MinorKeySharp(keySharpMinor.GsharpMin).relativeMajor,
        equals(keySharp.B));
  });

  test('relative minor of F# is D#m', () {
    expect(MajorKeySharp(keySharp.Fsharp).relativeMinor,
        equals(keySharpMinor.DsharpMin));
    expect(MinorKeySharp(keySharpMinor.DsharpMin).relativeMajor,
        equals(keySharp.Fsharp));
  });

  test('relative minor of C# is A#m', () {
    expect(MajorKeySharp(keySharp.Csharp).relativeMinor,
        equals(keySharpMinor.AsharpMin));
    expect(MinorKeySharp(keySharpMinor.AsharpMin).relativeMajor,
        equals(keySharp.Csharp));
  });

  test('relative minor of F is Dm', () {
    expect(MajorKeyFlat(keyFlat.F).relativeMinor, equals(keyFlatMinor.Dmin));
    expect(MinorKeyFlat(keyFlatMinor.Dmin).relativeMajor, equals(keyFlat.F));
  });

  test('relative minor of Bb is Gm', () {
    expect(MajorKeyFlat(keyFlat.Bb).relativeMinor, equals(keyFlatMinor.Gmin));
    expect(MinorKeyFlat(keyFlatMinor.Gmin).relativeMajor, equals(keyFlat.Bb));
  });

  test('relative minor of Eb is Cm', () {
    expect(MajorKeyFlat(keyFlat.Eb).relativeMinor, equals(keyFlatMinor.Cmin));
    expect(MinorKeyFlat(keyFlatMinor.Cmin).relativeMajor, equals(keyFlat.Eb));
  });

  test('relative minor of Ab is Fm', () {
    expect(MajorKeyFlat(keyFlat.Ab).relativeMinor, equals(keyFlatMinor.Fmin));
    expect(MinorKeyFlat(keyFlatMinor.Fmin).relativeMajor, equals(keyFlat.Ab));
  });

  test('relative minor of Db is Bbm', () {
    expect(MajorKeyFlat(keyFlat.Db).relativeMinor, equals(keyFlatMinor.BbMin));
    expect(MinorKeyFlat(keyFlatMinor.BbMin).relativeMajor, equals(keyFlat.Db));
  });

  test('relative minor of Gb is Ebm', () {
    expect(MajorKeyFlat(keyFlat.Gb).relativeMinor, equals(keyFlatMinor.EbMin));
    expect(MinorKeyFlat(keyFlatMinor.EbMin).relativeMajor, equals(keyFlat.Gb));
  });

  test('relative minor of Cb is Abm', () {
    expect(MajorKeyFlat(keyFlat.Cb).relativeMinor, equals(keyFlatMinor.AbMin));
    expect(MinorKeyFlat(keyFlatMinor.AbMin).relativeMajor, equals(keyFlat.Cb));
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
