import 'dart:io';
import 'package:guess_number2/game.dart';
List<int> myList = [];
void main() {
  int result = 0;
  int round = 0;
  int cnt = 0;

  stdout.write('Enter a maximum number to random: ');
  var max = stdin.readLineSync();
  var maxs = int.tryParse(max!);
  if (maxs == null) {
    maxs = 100;
  }

  var game = Game(maxRandom: maxs);
  print('╔════════════════════════════════════════════════════════════════════');
  print('║                        GUESS  THE  NUMBER  ');
  print('╟────────────────────────────────────────────────────────────────────');
  do {
    stdout.write('║ Guess the number between 1 and $maxs : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }
    result = game.doGuess(guess);
    cnt++;
  } while (result != 1);
  print('╟────────────────────────────────────────────────────────────────────');
  print('║                                END ');
  print('╚════════════════════════════════════════════════════════════════════');
  round++;
  myList.add(cnt);
  stdout.write('Play again? (Y/N) : ');
  var play = stdin.readLineSync();


  for(;;){
    if(play == 'N' || play =='n'){
      break;
    }else if(play == 'Y' || play =='y'){
      stdout.write('Enter a maximum number to random: ');
      var max = stdin.readLineSync();
      var maxs = int.tryParse(max!);
      if (maxs == null) {
        maxs = 100;
      }
      cnt = 0;
      var game = Game(maxRandom: maxs);
      print('╔════════════════════════════════════════════════════════════════════');
      print('║                        GUESS  THE  NUMBER  ');
      print('╟────────────────────────────────────────────────────────────────────');
      do {
        stdout.write('║ Guess the number between 1 and $maxs : ');
        var input = stdin.readLineSync();
        var guess = int.tryParse(input!);
        if (guess == null) {
          continue;
        }
        result = game.doGuess(guess);
        cnt++;
      } while (result != 1);
      print('╟────────────────────────────────────────────────────────────────────');
      print('║                                END ');
      print('╚════════════════════════════════════════════════════════════════════');
      round++;
      myList.add(cnt);
      stdout.write('Play again? (Y/N) : ');
      play = stdin.readLineSync();
    }else{
      stdout.write('Play again? (Y/N) : ');
      play = stdin.readLineSync();
    }
  }
  print("You've played $round games");
  for(var i = 0; i < myList.length; i++){
    print("🚀 Game #${i+1}: ${myList[i]} guesses" );
  }

}
