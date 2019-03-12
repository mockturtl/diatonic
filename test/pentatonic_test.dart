import 'package:diatonic/diatonic.dart'
    show
        quality,
        Pentatonic,
        MajorFlat6Pentatonic,
        MinorFlat5Pentatonic,
        HendrixPentatonic;
import 'package:test/test.dart';

void main() {
  group('pentatonic scale modes: chord qualities:', () {
    test('major', () {
      expect(Pentatonic.major.chordQuality, equals(quality.major));
    });
    test('major b6', () {
      expect(MajorFlat6Pentatonic.scale.chordQuality, equals(quality.major));
    });
    test('minor', () {
      expect(Pentatonic.minor.chordQuality, equals(quality.minor));
    });
    test('minor b5', () {
      expect(
          MinorFlat5Pentatonic.scale.chordQuality, equals(quality.diminished));
    });
    test('Hendrix (minor b4)', () {
      expect(HendrixPentatonic.scale.chordQuality, equals(quality.major));
    });
  });
}
