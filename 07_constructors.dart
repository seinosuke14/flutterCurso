void main() {
  final rowJson = {
    'name': 'Capitan America',
    'power': 'Arrojar Escudo',
    'isAlive': true
  };

  final captainAmerica = Hero.fromJson(rowJson);

  print('Super Heroe: $captainAmerica');
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'Sin nombre',
        power = json['power'] ?? 'Sin poder',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name - $power - ${isAlive ? 'Vivo' : 'Muerto'}';
  }
}
