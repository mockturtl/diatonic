import 'package:diatonic/diatonic.dart' show MelodicMinor, Quality;
import 'package:test/test.dart';

void main() {
  group('melodic minor scale modes: chord qualities:', () {
    test('iΔ', () {
      expect(
          MelodicMinor.ascMelodicMinor.chordQuality, equals(Quality.minMaj7));
    });
    test('ii7', () {
      expect(MelodicMinor.dorianFlat2.chordQuality, equals(Quality.minor));
    });
    test('III+Δ', () {
      expect(MelodicMinor.lydianAug.chordQuality, equals(Quality.augmented));
    });
    test('IV7', () {
      expect(MelodicMinor.mixolydianSharp11.chordQuality,
          equals(Quality.dominant));
    });
    test('V7', () {
      expect(
          MelodicMinor.mixolydianFlat6.chordQuality, equals(Quality.dominant));
    });
    test('vi7b5', () {
      expect(MelodicMinor.locrianNatural2.chordQuality, equals(Quality.min7b5));
    });
    test('vii7b5 (VII7)', () {
      expect(MelodicMinor.alteredDominant.chordQuality, equals(Quality.min7b5));
    });
  });
}
