void main() {
  final numbers = [1,2,3,4,5,6,7,8,9,10];

  print('List original $numbers');
  print('Length ${numbers.length}');
  print('Index 0 ${numbers[0]}');
  print('Length $numbers{numbers,first}');
  print('Length ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList() }');
  print('Set: ${reversedNumbers.toSet() }');

  final numbersGreaterThan5 = numbers.where((int num){
    return num > 5;  
  });

  print('>5 Iterable: $numbersGreaterThan5');
  print('>5 Set: ${ numbersGreaterThan5.toSet()}');
}