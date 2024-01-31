import 'package:quiz_flutter/model/quiz_question.dart';

final questions = [
  const QuizQuestion('What is Flutter primarily used for?', [
    ' Game development',
    ' Web development',
    ' Mobile app development (Correct Answer)',
    ' Server-side scripting',
  ]),
  // const SizedBox(
  //   height: 30,
  // ),
  const QuizQuestion(
    ' Which programming language is Flutter primarily associated with?',
    [
      ' Python',
      ' Java',
      ' Dart (Correct Answer)',
      ' Swift',
    ],
  ),
  // const SizedBox(
  //   height: 30,
  // ),
  const QuizQuestion(
      ('What is the purpose of the main.dart file in a Flutter project?'), [
    ' To define app colors',
    ' To store image assets',
    ' To define the apps entry point (Correct Answer)',
    ' To declare app routes',
  ]),
  // const SizedBox(
  //   height: 30,
  // ),
  const QuizQuestion(('In Flutter, what is a "widget"?'), [
    ' A small insect',
    ' A building block for the user interface (Correct Answer)',
    ' A programming error',
    ' A networking library'
  ]),
  // const SizedBox(
  //   height: 30,
  // ),
  const QuizQuestion(
      ('Which of the following represents a stateless widget in Flutter?'), [
    ' Container',
    ' TextField',
    ' ListView.builder (Correct Answer)',
    ' TextFieldController',
  ]),
  // const SizedBox(
  //   height: 30,
  // ),
  const QuizQuestion(
      ('What is the primary purpose of the pubspec.yaml file in a Flutter project?'),
      [
        ' To define app routes',
        ' To specify project dependencies (Correct Answer)',
        ' To write unit tests',
        ' To declare global variables',
      ]),
  // const SizedBox(
  //   height: 30,
  // ),
  const QuizQuestion(
      ('How does Flutter achieve cross-platform compatibility for mobile app development?'),
      [
        ' By using a different codebase for each platform',
        ' By relying solely on Androids platform',
        ' By using a single codebase to create native apps for both iOS and Android (Correct Answer)',
        ' By using web technologies like HTML and JavaScript',
      ]),
  // const SizedBox(
  //   height: 30,
  // ),
  const QuizQuestion(('What is "Hot Reload" in Flutter?'), [
    ' A feature to heat up your computer',
    ' A type of database',
    ' A mechanism to instantly see the effects of code changes without restarting the app (Correct Answer)',
    ' A navigation pattern',
  ]),
  // const SizedBox(
  //   height: 30,
  // ),
  const QuizQuestion(
      ('Which of the following Flutter libraries is commonly used for state management?'),
      [
        ' FlutterRedux',
        ' FlutterFirebase',
        ' FlutterProvider',
        ' Provider (Correct Answer)',
      ]),
  // const SizedBox(
  //   height: 30,
  // ),
  const QuizQuestion(
      ('How do you navigate between different screens in a Flutter app using routes?'),
      [
        ' By using conditional statements',
        ' By manually changing the screen widget',
        ' By defining routes in the pubspec.yaml file (Correct Answer)',
        ' By using external navigation libraries',
      ]),
];
