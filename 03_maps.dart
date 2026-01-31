void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png',
      3: {
        'dentro': 'ditto/front_shiny.png',
        'fuera': 'ditto/back_shiny.png',
      }
    },
  };

  // final Map<int, dynamic> pokemons = {
  //   1: 'Bulbasaur',
  //   2: 'Ivysaur',
  //   3: 'Venusaur',
  //   4: true
  // };

  print(pokemon['sprites']);

  print(pokemon['sprites'][1]);
  print(pokemon['sprites'][2]);
  print(pokemon['sprites'][3]);
  print(pokemon['sprites'][3]['dentro']);
}
