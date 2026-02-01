void main() {
  final mySquare = Square(side: -5);

  // mySquare.side = 10;

  print('Area: ${mySquare.calculateArea()}');

  print('Area: ${mySquare.area}');
}

class Square {
  double _side; // lado * lado

  Square({required double side})
      : assert(side >= 0, 'el side es negativo o menor a 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value');
    if (value < 0) throw 'value must be >0';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
