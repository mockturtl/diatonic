import 'package:diatonic/diatonic.dart';

main() {
  const key = MajorKeySharp(keySharp.C);

  var Ddorian = key.notesFor(Major.dorian);
  var Gmix = key.notesFor(Major.mixolydian);
  var Cionian = key.notesFor(Major.ionian);

  print('''ii-V-I in C:
  ${Ddorian.root}${Ddorian.chordSymbol}: ${Ddorian.tetrad}
  ${Gmix.root}${Gmix.chordSymbol}: ${Gmix.tetrad}
  ${Cionian.root}${Cionian.chordSymbol}: ${Cionian.tetrad}''');

  for (var k in keyFlat.values) {
    var x = MajorKeyFlat(k);
    var n = x.notesFor(Major.ionian);
    print('$k has ${n.flats} flats');
  }

  for (var k in keyFlatMinor.values) {
    var x = MinorKeyFlat(k);
    var n = x.notesFor(Major.ionian);
    print('$k has ${n.flats} flats');
  }

  for (var k in keySharp.values) {
    var x = MajorKeySharp(k);
    var n = x.notesFor(Major.ionian);
    print('$k has ${n.sharps} sharps');
  }

  for (var k in keySharpMinor.values) {
    var x = MinorKeySharp(k);
    var n = x.notesFor(Major.ionian);
    print('$k has ${n.sharps} sharps');
  }
}
