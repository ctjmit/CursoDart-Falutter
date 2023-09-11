// enum TipodDto implements Comparable<TipodDto>{
//   departamento1(categoria1: 1, categoria2: 2, categoria3: 3),
//   departamento2(categoria1: 1, categoria2: 2, categoria3:3),
//   departamento3(categoria1: 1, categoria2: 2, categoria3:3);

//   const TipodDto({
//     required this.categoria1,
//     required this.categoria2,
//     required this.categoria3
//   });

//   final int categoria1;
//   final int categoria2;
//   final int categoria3;

//   int get calculo => (categoria1 * categoria2);
//   bool get iscategoria => this == TipodDto.departamento1;
//   @override
//   int compareTo(TipodDto other) => calculo  - other.calculo;
// }

// void main(){
//     print(TipodDto.departamento1.categoria1);
// }

class tienda {
  final String name;
  final String articulo;
  final double price;
  //final Depto depto;
  List<String> art = [];

  tienda({
    required this.name,
    //required this.depto,
    required this.articulo,
    required this.price,
    required this.art,
  });

  List<String> getArticulos() {
    return art;
  }
}

void main(){
  tienda myTienda = tienda(
  name: "Mi Tienda",
//  depto: Depto.electronics,
  articulo: "Smartphone",
  price: 599.99,
  art: ["Artículo 1", "Artículo 2", "Artículo 3"],
);

List<String> articulos = myTienda.getArticulos();
print(' Artículos en la tienda ${myTienda.name}: $articulos ' );
}

