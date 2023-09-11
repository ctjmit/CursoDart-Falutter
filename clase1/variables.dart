void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilites = [ 'impostor' ];
  final sprites = <String>['ditto/front.png','ditto/back.png'];
  
  
  /*dinamic */
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = () =>true;
  errorMessage = null;
  
  print ("""
  $pokemon
  $hp
  $isAlive
  $abilites
  $sprites
  $errorMessage
  """);
  
  /*llamando a los metodos creados*/
  print(getEveryone());
  print('Sume: ${addTwoNumers(10,20)}');
  print(getperson());
  
}
/*las funciones siempre iran fuera del metodo meain, ahorita se creara el metodo*/

String getEveryone() => 'Buenas a todas';

int addTwoNumers(int a, int b) => a+b;

int addTwoNumbersOptional (int a, [int b = 0]){
  return a +b;
}
String getperson() => 'antoniod';

