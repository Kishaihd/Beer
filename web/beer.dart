// DRY = Don't Repeat Yourself

/* 
 * Write a program that will print out the lyrics to "99 bottles of beer on the wall". 
 * Use a loop to minimize the need to type out the lyrics. The song should be printed 
 * using either numerals or spelled-out numbers as the user desires.
 */

//Ninety-nine bottles of beer on the wall, Ninety-nine bottles of berr.
//Take one down, pass it around, Ninety-eight bottles of beer on the wall!



library countingBeer;

import 'dart:html';
import 'package:web_ui/web_ui.dart';
import 'package:Beer/string_util.dart';

@observable String song = "";
@observable bool spellOutNumbers = false;

//TESTING!
@observable String sugaryShits;



void main() {
  print("main()");
  
  //sing();
}

void sing() {
  print("sing()");
  
  Pluralizer bottle = new Pluralizer("bottle", "bottles");
  
  StringBuffer sb = new StringBuffer(); //String buffers are awesome and way more memory efficient!   
  int b = 99; //iterator starts at 99 bottles.
  var number; //var is a shorthand way of saying dynamic.
  //dynamic number;  <-- example.

  while (b > 0) {
    number = spellOutNumbers ? intToWord(b) : b;
    sb.writeln("${capitalize(number)} ${bottle.getTerm(b)} of beer on the wall, ${number} ${bottle.getTerm(b)} of beer...");
    b--;
    
    number = spellOutNumbers ? intToWord(b) : b;
    
    sb.writeln("Take one down, pass it around, ${number} ${bottle.getTerm(b)} of beer on the wall!");
    sb.writeln();
  }
  
  song = sb.toString();
  
  //print(song);
}









