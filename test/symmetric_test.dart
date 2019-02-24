import 'package:diatonic/diatonic.dart' show quality, Diminished;
import 'package:test/test.dart';

void main() {
  group('diminished scale modes: chord qualities:', () {
    test('iᴼ', () {
      expect(
          Diminished.tonicDiminished.chordQuality, equals(quality.diminished));
    });
    test('iiᴼ', () {
      expect(Diminished.dominantDiminished.chordQuality,
          equals(quality.diminished));
    });
  });
}
