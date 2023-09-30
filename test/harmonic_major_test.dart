import 'package:diatonic/diatonic.dart' show HarmonicMajor, Quality;
import 'package:test/test.dart';

void main() {
  group('harmonic major scale modes: chord qualities:', () {
    test('IΔ', () {
      expect(HarmonicMajor.harmonicMajor.chordQuality, equals(Quality.major));
    });
    test('ii7b5', () {
      expect(HarmonicMajor.dorianFlat5.chordQuality, equals(Quality.min7b5));
    });
    test('iii7', () {
      expect(HarmonicMajor.phrygianFlat4.chordQuality, equals(Quality.minor));
    });
    test('ivΔ7', () {
      expect(HarmonicMajor.lydianFlat3.chordQuality, equals(Quality.minMaj7));
    });
    test('V7b9', () {
      expect(
          HarmonicMajor.mixolydianFlat9.chordQuality, equals(Quality.altered));
    });
    test('VI+Δ', () {
      expect(HarmonicMajor.lydianAugSharp9.chordQuality,
          equals(Quality.augmented));
    });
    test('viiᴼ', () {
      expect(HarmonicMajor.locrianDoubleFlat7.chordQuality,
          equals(Quality.diminished));
    });
  });
}
