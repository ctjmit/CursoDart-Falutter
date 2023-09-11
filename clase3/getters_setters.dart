void main () {
// final mySquare = Square( side: -10);
  Square setSquare = Square();

  setSquare._side = 20;
  print('el area del cuadrado es: ${setSquare.area}');
 //print('area: ${.area}');
}
class Square {
  double _side = 0;

  // Square({ required double side})
  //   : assert(side >=0, 'side must be >= 0'),
  //   _side = side;

  double get area {
    return _side * _side;
  }
  set side(double value){
    print('setting new value $value');
    if (value < 0 ) throw 'values must be >= 0';

    _side=value;
  }

  double calculateArea() {
    return _side * _side;
  }
}