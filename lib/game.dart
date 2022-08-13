import 'dart:math';

class Game{
  int answer = 0; //instance field
  int count = 0;
  // int round = 0;


  //constructor
  Game({int maxRandom = 100}) {
    var r = Random();
    answer = r.nextInt(maxRandom) + 1;
  }

  int doGuess(int num){
    if (num > answer){
      print('║ ➜ $num is TOO HIGH! ▲');
      print('╟────────────────────────────────────────────────────────────────────');
      count++;
      return 0;
    }else if (num < answer){
      count++;
      print('║ ➜ $num is TOO LOW! ▼');
      print('╟────────────────────────────────────────────────────────────────────');
      return 0;
    }else{
      count++;
      // round++;
      print('║ ➜ $num is CORRECT ❤ , total guesses: $count');
      return 1;
    }
  }


}