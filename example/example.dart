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

  var x = MajorKeyFlat(keyFlat.Cb);
  var n = x.notesFor(Major.ionian);
  var flats = n.asList.fold(0, (c, note) => note.contains('b') ? c + 1 : c);
  print('it has $flats flats');
}
