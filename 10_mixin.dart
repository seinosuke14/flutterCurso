abstract class animal {}

abstract class mamifero extends animal {}

abstract class ave extends animal {}

abstract class pez extends animal {}

mixin class volador {
  void volar() {
    print('estoy volando');
  }
}

mixin class caminante {
  void caminar() {
    print('estoy caminando');
  }
}

mixin class nadador {
  void nadar() {
    print('estoy nadando');
  }
}

class delfin extends mamifero with nadador {}

class murcielago extends mamifero with volador, caminante {}

class gato extends mamifero with caminante {}

class paloma extends ave with volador, caminante {}

class pato extends ave with volador, caminante, nadador {}

class tiburon extends pez with nadador {}

class pez_volador extends pez with volador, nadador {}

void main() {
  final flipper = delfin();
  flipper.nadar();

  final batman = murcielago();
  batman.volar();
  batman.caminar();

  final donald = pato();
  donald.volar();
  donald.caminar();
  donald.nadar();
}
