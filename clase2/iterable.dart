// bool predicate(String item) {
//   return item.length > 5;
// }

void main() {
 
// var map = {'david', 7894556, 'carlos', 8579641};
// print(map);
// const items = ['salsa', 'barbaoa', 'tomate', 'maiz'];
// var founditems = items.firstWhere((item) {
// return item.length > 5;
// });
// print(founditems);
Iterable<int> number = [1,2,3,4];

int p = mayorQueX(number, 2);
print(p);

}

int mayorQueX(Iterable<int> collection, int x) {
  return collection.where((item) => item > x).length;
}
