void main (){
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  final iroman = Hero.fromJson(rawJson);
  print(iroman);
}


class Hero {
  String name;
  String power;
  bool isAlive;
//constructor, el constructo recibe infomarcion del metodo y manda info a las variables declaradas al inicio
  Hero({                    
    required this.name,
    required this.power,
    required this.isAlive
  });
//metodo que contiene un map, este metodo le asigna al constructor
  Hero.fromJson( Map<String, dynamic> json)           
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power',
      isAlive = json['isAlive'] ?? 'No isAlive'; //?? 'No isAlive' esto se crea para que a futuro no genere un error http

  @override
  String toString() {
    return '$name, $power, isAlive: ${ isAlive ? 'yes':'nope'}';
  }
}