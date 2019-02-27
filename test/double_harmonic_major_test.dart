import 'package:diatonic/diatonic.dart' show quality, DoubleHarmonicMajor;
import 'package:test/test.dart';

void main() {
  group('double harmonic major scale modes: chord qualities:', () {
    test('IΔ', () {
      expect(DoubleHarmonicMajor.doubleHarmonicMajor.chordQuality,
          equals(quality.major));
    });
    test('IIΔ', () {
      expect(DoubleHarmonicMajor.lydianSharp2Sharp6.chordQuality,
          equals(quality.major));
    });
    test('iii7', () {
      expect(DoubleHarmonicMajor.ultraPhrygian.chordQuality,
          equals(quality.minor));
    });
    test('ivΔ', () {
      expect(DoubleHarmonicMajor.doubleHarmonicMinor.chordQuality,
          equals(quality.minMaj7));
    });
    test('V7b5b9', () {
      expect(
          DoubleHarmonicMajor.oriental.chordQuality, equals(quality.altered));
    });
    test('VI+Δ', () {
      expect(DoubleHarmonicMajor.ionianAugSharp9.chordQuality,
          equals(quality.augmented));
    });
    test('VII7 (inversion)', () {
      expect(DoubleHarmonicMajor.locrianDoubleFlat3DoubleFlat7.chordQuality,
          equals(quality.dominant));
    });
  });

  group('double harmonic major scale modes: offset distance', () {
    test('double harmonic major is 0 semitones from the key center', () {
      expect(DoubleHarmonicMajor.doubleHarmonicMajor.offsetFromKeyCenter,
          equals(0));
    });
    test('lydian #2 #6 is 2 semitones from the key center', () {
      expect(DoubleHarmonicMajor.lydianSharp2Sharp6.offsetFromKeyCenter,
          equals(1));
    });
    test('ultraphrygian is 3 semitones from the key center', () {
      expect(DoubleHarmonicMajor.ultraPhrygian.offsetFromKeyCenter, equals(4));
    });
    test('double harmonic minor is 5 semitones from the key center', () {
      expect(DoubleHarmonicMajor.doubleHarmonicMinor.offsetFromKeyCenter,
          equals(5));
    });
    test('oriental is 7 semitones from the key center', () {
      expect(DoubleHarmonicMajor.oriental.offsetFromKeyCenter, equals(7));
    });
    test('ionian augmented #9 is 8 semitones from the key center', () {
      expect(
          DoubleHarmonicMajor.ionianAugSharp9.offsetFromKeyCenter, equals(8));
    });
    test('locrian bb3 bb7 is 11 semitones from the key center', () {
      expect(
          DoubleHarmonicMajor.locrianDoubleFlat3DoubleFlat7.offsetFromKeyCenter,
          equals(11));
    });
  });
}
