import 'package:diatonic/diatonic.dart';

main() {
  const key = MajorKeySharp(keySharp.C);

  var Ddorian = key.notesFor(Major.dorian, 'D');
  var Gmix = key.notesFor(Major.mixolydian, 'G');
  var Cionian = key.notesFor(Major.ionian, 'C');

  print('''ii-V-I in C:
  ${Ddorian.root}${Ddorian.chordSymbol}: ${Ddorian.tetrad}
  ${Gmix.root}${Gmix.chordSymbol}: ${Gmix.tetrad}
  ${Cionian.root}${Cionian.chordSymbol}: ${Cionian.tetrad}''');
}
