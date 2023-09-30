import 'package:diatonic/diatonic.dart' show Diminished, Quality;
import 'package:test/test.dart';

void main() {
  group('diminished scale modes: chord qualities:', () {
    test('iᴼ', () {
      expect(
          Diminished.tonicDiminished.chordQuality, equals(Quality.diminished));
    });
    test('iiᴼ', () {
      expect(Diminished.dominantDiminished.chordQuality,
          equals(Quality.diminished));
    });
  });
}
