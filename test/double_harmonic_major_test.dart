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
      expect(DoubleHarmonicMajor.ionianSharp2Sharp5.chordQuality,
          equals(quality.augmented));
    });
    test('VII7 (inversion)', () {
      expect(DoubleHarmonicMajor.locrianDoubleFlat3DoubleFlat7.chordQuality,
          equals(quality.dominant));
    });
  });
}
