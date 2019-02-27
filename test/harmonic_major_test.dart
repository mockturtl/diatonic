import 'package:diatonic/diatonic.dart' show quality, HarmonicMajor;
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

  group('harmonic major scale modes: offset distance', () {
    test('harmonic major is 0 semitones from the key center', () {
      expect(HarmonicMajor.harmonicMajor.offsetFromKeyCenter, equals(0));
    });
    test('dorian b5 is 2 semitones from the key center', () {
      expect(HarmonicMajor.dorianFlat5.offsetFromKeyCenter, equals(2));
    });
    test('phrygian b4 is 3 semitones from the key center', () {
      expect(HarmonicMajor.phrygianFlat4.offsetFromKeyCenter, equals(4));
    });
    test('lydian b3 is 5 semitones from the key center', () {
      expect(HarmonicMajor.lydianFlat3.offsetFromKeyCenter, equals(5));
    });
    test('mixolydian b9 is 7 semitones from the key center', () {
      expect(HarmonicMajor.mixolydianFlat9.offsetFromKeyCenter, equals(7));
    });
    test('lydian augmented #9 is 8 semitones from the key center', () {
      expect(HarmonicMajor.lydianAugSharp9.offsetFromKeyCenter, equals(8));
    });
    test('locrian bb7 is 11 semitones from the key center', () {
      expect(HarmonicMajor.locrianDoubleFlat7.offsetFromKeyCenter, equals(11));
    });
  });
}
