void main() {
  
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneracion');

  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);

  final Hero batman = Hero(name: 'clark');

  print(batman);
  print(batman.name);
  print(batman.power);
}

class Hero {
  String name;
  String power;

  Hero({
    required this.name,
    this.power = 'Sin poder'
  });

  @override 
String toString() {
  return '$name - $power';
}
}

