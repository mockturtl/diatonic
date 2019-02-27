import 'package:diatonic/diatonic.dart' show quality, MelodicMinor;
import 'package:test/test.dart';

void main() {
  group('melodic minor scale modes: chord qualities:', () {
    test('iΔ', () {
      expect(
          MelodicMinor.ascMelodicMinor.chordQuality, equals(quality.minMaj7));
    });
    test('ii7', () {
      expect(MelodicMinor.dorianFlat2.chordQuality, equals(quality.minor));
    });
    test('III+Δ', () {
      expect(MelodicMinor.lydianAug.chordQuality, equals(quality.augmented));
    });
    test('IV7', () {
      expect(MelodicMinor.mixolydianSharp11.chordQuality,
          equals(quality.dominant));
    });
    test('V7', () {
      expect(
          MelodicMinor.mixolydianFlat6.chordQuality, equals(quality.dominant));
    });
    test('vi7b5', () {
      expect(MelodicMinor.locrianNatural2.chordQuality, equals(quality.min7b5));
    });
    test('vii7b5 (VII7)', () {
      expect(MelodicMinor.alteredDominant.chordQuality, equals(quality.min7b5));
    });
  });

  group('melodic minor scale modes: offset distance', () {
    test('melodic minor is 0 semitones from the key center', () {
      expect(MelodicMinor.ascMelodicMinor.offsetFromKeyCenter, equals(0));
    });
    test('dorian b2 is 2 semitones from the key center', () {
      expect(MelodicMinor.dorianFlat2.offsetFromKeyCenter, equals(2));
    });
    test('lydianAug is 3 semitones from the key center', () {
      expect(MelodicMinor.lydianAug.offsetFromKeyCenter, equals(3));
    });
    test('mixolydian #11 is 5 semitones from the key center', () {
      expect(MelodicMinor.mixolydianSharp11.offsetFromKeyCenter, equals(5));
    });
    test('mixolydian b6 is 7 semitones from the key center', () {
      expect(MelodicMinor.mixolydianFlat6.offsetFromKeyCenter, equals(7));
    });
    test('locrian nat2 is 9 semitones from the key center', () {
      expect(MelodicMinor.locrianNatural2.offsetFromKeyCenter, equals(9));
    });
    test('altered dominant is 11 semitones from the key center', () {
      expect(MelodicMinor.alteredDominant.offsetFromKeyCenter, equals(11));
    });
  });
}
