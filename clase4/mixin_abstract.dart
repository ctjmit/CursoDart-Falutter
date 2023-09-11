//esta se considera la super clase.
abstract class Animal {}
//
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

//se debe enterder como comportamiento a la accion que realiza un animla,
// que en este caso se presenta con una clase.
mixin volador {
  String volar() => ('estoy volando');

}
mixin Caminate {
  String caminar()=>('estoy caminando');
}

mixin Nadador{
  void nadar() => print('estoy nadando!');
}

//esto se le llama mixin en dart.
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with volador, Caminate{
   String getMessage() => 'Soy Murcielago';
}
class Gato extends Mamifero with Caminate{
  String getMessage() => 'Soy Gato';
}

class Paloma extends Ave with Caminate, volador {}
class Pato extends Ave with Caminate, volador, Nadador {}

class Tiburon extends Ave with Nadador {}
class PezVolador extends Ave with Nadador, volador{}

void main(){
  String result = '';
  String accion = '';
//   final flipper = Delfin();
//   flipper.nadar();
//   final batman = Murcielago();
//   batman.caminar();
//   batman.volar();

// final namor = Pato();
//   namor.caminar();
//   namor.volar();
//   namor.nadar();

  Gato gato = Gato();
  result = gato.getMessage();
  accion = gato.caminar();
  print('$result y $accion');

  Murcielago murcielago = Murcielago();
  result = murcielago.getMessage();
  accion = murcielago. volar();
  print('$result y $accion');
}