library string_util;


//solving the numbers to word-numbers!
//numbers under 20 expressed in word form!
final List<String> ones = [ 
  "NO",
  "one",
  "two",
  "three",
  "four",
  "five",
  "six",
  "seven",
  "eight",
  "nine",
  "ten",
  "eleven",
  "twelve",
  "thirteen",
  "fourteen",
  "fifteen",
  "sixteen",
  "seventeen",
  "eighteen",
  "nineteen",
];

//tens expressed in word fooooooorm!
final List<String> tens = [ 
  null,
  null,
  "twenty",
  "thirty",
  "forty",
  "fifty",
  "sixty",
  "seventy",
  "eighty",
  "ninety"
];
                         
// function to translate an integer from 0 to 99 into its word form!
String intToWord(int number) {
  assert(number >= 0 && number <= 99);

  StringBuffer sb = new StringBuffer();
  
  if (number < 20) {
    sb.write(ones[number]);
  }
  else {
    int numDivTen = (number / 10).floor();
    sb.write(tens[numDivTen]);
    sb.write(tens[(number / 10).floor()]);
    
    if (number % 10 != 0) {
    sb.write("-");
    sb.write(ones[number % 10]);
    //sb.write(ones[(number - (numDivTen * 10))]);   
  }
}

  return sb.toString();
}

//capitalizes first letter of 'data'
//If a string longer than 1 character is passed, the first character gets uppercased. If 1 character, 
//it gets needlessly converted to a string, then uppercased. If an int is passed, it gets converted to a string,
//then needlessly uppercased.
String capitalize(var data) {
  if (data is String && data.length > 1) {
    return "${data[0].toUpperCase()}${data.substring(1, data.length)}"; //sbustring! NICE!
  }
  else {
    return data.toString().toUpperCase();
  }
}

//capitalize classes. Just do it.
//provides the correct term for pluralization.
class Pluralizer {
  String singular;
  String plural;
  
  Pluralizer(String this.singular, String this.plural);
  
  String getTerm(int numberOfItems) => numberOfItems == 1 ? singular : plural;
}  
  

