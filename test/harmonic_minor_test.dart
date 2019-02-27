import 'package:diatonic/diatonic.dart' show quality, HarmonicMinor;
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
      expect(HarmonicMinor.phrygianMajor.chordQuality, equals(quality.altered));
    });
    test('VIΔ', () {
      expect(HarmonicMinor.lydianSharp9.chordQuality, equals(quality.major));
    });
    test('viiᴼ', () {
      expect(HarmonicMinor.alteredDominantDoubleFlat7.chordQuality,
          equals(quality.diminished));
    });
  });

  group('harmonic minor scale modes: offset distance', () {
    test('harmonic minor is 0 semitones from the key center', () {
      expect(HarmonicMinor.harmonicMinor.offsetFromKeyCenter, equals(0));
    });
    test('locrian nat6 is 2 semitones from the key center', () {
      expect(HarmonicMinor.locrianNatural6.offsetFromKeyCenter, equals(2));
    });
    test('ionian augmented is 3 semitones from the key center', () {
      expect(HarmonicMinor.ionianAugmented.offsetFromKeyCenter, equals(3));
    });
    test('dorian #4 is 5 semitones from the key center', () {
      expect(HarmonicMinor.dorianSharp4.offsetFromKeyCenter, equals(5));
    });
    test('phrygian major is 7 semitones from the key center', () {
      expect(HarmonicMinor.phrygianMajor.offsetFromKeyCenter, equals(7));
    });
    test('lydian #9 is 8 semitones from the key center', () {
      expect(HarmonicMinor.lydianSharp9.offsetFromKeyCenter, equals(8));
    });
    test('altered dominant bb7is 11 semitones from the key center', () {
      expect(HarmonicMinor.alteredDominantDoubleFlat7.offsetFromKeyCenter,
          equals(11));
    });
  });
}
