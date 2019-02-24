import 'package:diatonic/diatonic.dart';
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
      expect(
          MelodicMinor.lydianDominant.chordQuality, equals(quality.dominant));
    });
    test('V7', () {
      expect(
          MelodicMinor.aeolianDominant.chordQuality, equals(quality.dominant));
    });
    test('vi7b5', () {
      expect(MelodicMinor.locrianNatural2.chordQuality, equals(quality.min7b5));
    });
    test('vii7b5 (VII7)', () {
      expect(MelodicMinor.alteredDominant.chordQuality, equals(quality.min7b5));
    });
  });
}
