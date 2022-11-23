import 'package:flutter/cupertino.dart';

class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    "When was Fluttter launched ?",
    [
      Answer("2017", true),
      Answer("2019", false),
      Answer("2021", false),
      Answer("2022", false),
    ],
  ));

  list.add(Question(
    "Who owns Firebase ?",
    [
      Answer("Apple", false),
      Answer("Google", true),
      Answer("Microsoft", false),
      Answer("Udemy", false),
    ],
  ));

  list.add(Question(
    "Who owns Bing search engine ?",
    [
      Answer("Aphabet Inc.", false),
      Answer("Yahoo Inc.", false),
      Answer("Microsoft", true),
      Answer("Apple", false),
    ],
  ));

  list.add(Question(
    "Which language can't be used for side programming ?",
    [
      Answer("HTML", true),
      Answer("PHP", false),
      Answer("JAVA", false),
      Answer("Javascript", false),
    ],
  ));

  list.add(Question(
    'who is the owner of flutter',
    [
      Answer("Nokia", false),
      Answer("oppo", false),
      Answer("google", true),
      Answer("apple", false),
    ],
  ));

  return list;
}
