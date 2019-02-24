import 'package:diatonic/diatonic.dart';
import 'package:test/test.dart';

void main() {
  group('harmonic minor scale modes: chord qualities:', () {
    test('i∆', () {
      expect(HarmonicMinor.harmonicMinor.chordQuality, equals(quality.minMaj7));
    });
    test('iiø', () {
      expect(
          HarmonicMinor.locrianNatural6.chordQuality, equals(quality.min7b5));
    });
    test('III+Δ', () {
      expect(HarmonicMinor.ionianAugmented.chordQuality,
          equals(quality.augmented));
    });
    test('iv7', () {
      expect(HarmonicMinor.dorianSharp4.chordQuality, equals(quality.minor));
    });
    test('V7b9', () {
      expect(
          HarmonicMinor.phrygianDominant.chordQuality, equals(quality.altered));
    });
    test('VIΔ', () {
      expect(HarmonicMinor.lydianSharp9.chordQuality, equals(quality.major));
    });
    test('viiᴼ', () {
      expect(HarmonicMinor.alteredDominantDoubleFlat7.chordQuality,
          equals(quality.diminished));
    });
  });
}
