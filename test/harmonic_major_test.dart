import 'package:diatonic/diatonic.dart';
import 'package:test/test.dart';

void main() {
  group('harmonic major scale modes: chord qualities:', () {
    test('IΔ', () {
      expect(HarmonicMajor.harmonicMajor.chordQuality, equals(quality.major));
    });
    test('ii7b5', () {
      expect(HarmonicMajor.dorianFlat5.chordQuality, equals(quality.min7b5));
    });
    test('iii7', () {
      expect(HarmonicMajor.phrygianFlat4.chordQuality, equals(quality.minor));
    });
    test('ivΔ7', () {
      expect(HarmonicMajor.lydianFlat3.chordQuality, equals(quality.minMaj7));
    });
    test('V7b9', () {
      expect(
          HarmonicMajor.mixolydianFlat9.chordQuality, equals(quality.altered));
    });
    test('VI+Δ', () {
      expect(HarmonicMajor.lydianAugSharp9.chordQuality,
          equals(quality.augmented));
    });
    test('viiᴼ', () {
      expect(HarmonicMajor.locrianDoubleFlat7.chordQuality,
          equals(quality.diminished));
    });
  });
}
