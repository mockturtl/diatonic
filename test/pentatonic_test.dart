import 'package:diatonic/diatonic.dart'
    show MajorFlat6Pentatonic, MinorFlat5Pentatonic, Pentatonic, Quality;
import 'package:test/test.dart';

void main() {
  group('pentatonic scale modes: chord qualities:', () {
    test('major', () {
      expect(Pentatonic.major.chordQuality, equals(Quality.major));
    });
    test('major b6', () {
      expect(MajorFlat6Pentatonic.scale.chordQuality, equals(Quality.major));
    });
    test('minor', () {
      expect(Pentatonic.minor.chordQuality, equals(Quality.minor));
    });
    test('minor b5', () {
      expect(
          MinorFlat5Pentatonic.scale.chordQuality, equals(Quality.diminished));
    });
  });
}
