// void displayName(str) {
//   if (str.length > 0) {
//     print(str);
//   } else {
//     throw new Exception('Name is empty.');
//   }
// }
// void main() {
//   var name = '';
//   try {
//     displayName(name);
//   } catch (e) {
//     print('There is an exception');
//   }
//   print('bye');
// }

class EmptyNameException implements Exception {
  String cause;
  EmptyNameException(this.cause);
}
 
void displayName(str) {
  if (str.length > 0) {
    print(str);
  } else {
    throw new EmptyNameException('Name is empty.');
  }
}
 
void main() {
  var name = '';
  try {
    displayName(name);
  } on EmptyNameException {
    print('Given name is empty.');
  }
  print('Bye');
}