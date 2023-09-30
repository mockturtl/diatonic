import 'package:diatonic/diatonic.dart' show DoubleHarmonicMajor, Quality;
import 'package:test/test.dart';

void main() {
  group('double harmonic major scale modes: chord qualities:', () {
    test('IΔ', () {
      expect(DoubleHarmonicMajor.doubleHarmonicMajor.chordQuality,
          equals(Quality.major));
    });
    test('IIΔ', () {
      expect(DoubleHarmonicMajor.lydianSharp2Sharp6.chordQuality,
          equals(Quality.major));
    });
    test('iii7', () {
      expect(DoubleHarmonicMajor.ultraPhrygian.chordQuality,
          equals(Quality.minor));
    });
    test('ivΔ', () {
      expect(DoubleHarmonicMajor.doubleHarmonicMinor.chordQuality,
          equals(Quality.minMaj7));
    });
    test('V7b5b9', () {
      expect(
          DoubleHarmonicMajor.oriental.chordQuality, equals(Quality.altered));
    });
    test('VI+Δ', () {
      expect(DoubleHarmonicMajor.ionianSharp2Sharp5.chordQuality,
          equals(Quality.augmented));
    });
    test('VII7 (inversion)', () {
      expect(DoubleHarmonicMajor.locrianDoubleFlat3DoubleFlat7.chordQuality,
          equals(Quality.dominant));
    });
  });
}
