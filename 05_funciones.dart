void main() {
  print(greetEveryone());

  print(addToNumbers(5, 10));

  print(addToNumbersOptional(5));
}

String greetEveryone() => 'Hello Everyone';

int addToNumbers(int a, int b) => a + b;

int addToNumbersOptional(int a, [int b = 0]) {
  //b ??= 20;

  return a + b;
}
