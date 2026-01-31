void main() {
  final number = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 9, 10];

  print('lista de numeros $number');
  print('cantidad de numeros ${number.toSet().length}');
  print('index 0: ${number[0]}');
  print('el primero ${number.first}');
  print('el ultimo ${number.last}');

  print('reverse: ${number.reversed}');

  final numberGreaterFive = number.where((num) {
    return num > 5;
  });

  print('mayores a 5 iterable: $numberGreaterFive');
  print('mayores a 5 set: ${numberGreaterFive.toSet()}');
}
