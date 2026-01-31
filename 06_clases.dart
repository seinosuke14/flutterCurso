void main() {
  final wolverine = new Hero(name: 'logan');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  print(wolverine.toString());
}

class Hero {
  String name;
  String power;

  Hero({
    required this.name,
    this.power = 'No Power',
  });

  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  @override //escribir override para que Dart sepa que estamos sobreescribiendo el metodo toString
  String toString() {
    return '$name - $power';
  }
}
