import 'package:diatonic/diatonic.dart' show quality, Pentatonic;
import 'package:test/test.dart';

void main() {
  group('pentatonic scale modes: chord qualities:', () {
    test('major', () {
      expect(Pentatonic.major.chordQuality, equals(quality.major));
    });
    test('minor', () {
      expect(Pentatonic.minor.chordQuality, equals(quality.minor));
    });
  });
}
