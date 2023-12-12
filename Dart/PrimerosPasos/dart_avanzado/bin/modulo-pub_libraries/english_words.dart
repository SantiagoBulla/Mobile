import 'package:english_words/english_words.dart';

void main(List<String> args) {
  nouns.take(10).forEach(print);
  print(syllables('awasome'));
  print(WordPair('hello', 'world'));
}
