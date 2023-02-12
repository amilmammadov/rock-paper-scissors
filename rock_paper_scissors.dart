import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print('Welcome to the game rock_paper_scissors!');
  print('If you want to start game write x, if you want to exit write y');
  List<String> gameAnswers = ['rock', 'paper', 'scissors'];

  while (true) {
    stdout.write('Your choice: ');
    String? choice = stdin.readLineSync();
    if (choice == 'X'.toLowerCase()) {
      String gameChoice = gameAnswers[Random().nextInt(3)];
      print(
          'Make a choice to challange with gameBot: \n1. rock \n2. paper \n3. scissors');
      stdout.write('Answer: ');
      int? answer = int.parse(stdin.readLineSync()!);
      compareAnswers(gameChoice, answer);
    } else {
      print('Exited!');
      break;
    }
  }
}

void compareAnswers(gameChoice, answer) {
  switch (answer) {
    case 1:
      if (gameChoice == 'rock') {
        print("$gameChoice, rock: equal ");
      } else if (gameChoice == 'paper') {
        print("$gameChoice, rock: you won ");
      } else {
        print("$gameChoice, rock: you won");
      }
      break;
    case 2:
      if (gameChoice == 'rock') {
        print("$gameChoice, paper: you lost ");
      } else if (gameChoice == 'paper') {
        print("$gameChoice, paper: equal ");
      } else {
        print("$gameChoice, paper: you won");
      }
      break;
    case 3:
      if (gameChoice == 'rock') {
        print("$gameChoice, scissors: you lost ");
      } else if (gameChoice == 'paper') {
        print("$gameChoice, scissors: you won ");
      } else {
        print("$gameChoice, scissors: equal");
      }
      break;
  }
}
