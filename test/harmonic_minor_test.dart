import 'package:diatonic/diatonic.dart' show HarmonicMinor, Quality;
import 'package:test/test.dart';

void main() {
  group('harmonic minor scale modes: chord qualities:', () {
    test('i∆', () {
      expect(HarmonicMinor.harmonicMinor.chordQuality, equals(Quality.minMaj7));
    });
    test('iiø', () {
      expect(
          HarmonicMinor.locrianNatural6.chordQuality, equals(Quality.min7b5));
    });
    test('III+Δ', () {
      expect(HarmonicMinor.ionianAugmented.chordQuality,
          equals(Quality.augmented));
    });
    test('iv7', () {
      expect(HarmonicMinor.dorianSharp4.chordQuality, equals(Quality.minor));
    });
    test('V7b9', () {
      expect(HarmonicMinor.phrygianMajor.chordQuality, equals(Quality.altered));
    });
    test('VIΔ', () {
      expect(HarmonicMinor.lydianSharp9.chordQuality, equals(Quality.major));
    });
    test('viiᴼ', () {
      expect(HarmonicMinor.alteredDominantDoubleFlat7.chordQuality,
          equals(Quality.diminished));
    });
  });
}
