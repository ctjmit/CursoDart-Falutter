//creacion de enum
enum Depto {
  depto1(
    categoria: 'Cementos',
    departamento: 'Construccion',
  ),
  depto2(
    categoria: 'Vivero',
    departamento: 'Agricola y Jardin',
  ),
  depto3(
    categoria: 'Dormitorio',
    departamento: 'Domestico',
  );

  final String categoria;
  final String departamento;

  const Depto({
    required this.categoria,
    required this.departamento,
  });

  @override
  String toString() => 'Departamento: $departamento \n-Categoria: $categoria';
}
class tienda {
  final String name;
  final Depto depto;
  Map<String, double> art = {};

  tienda({
    required this.name,
    required this.depto,
    required this.art
  });

   Map<String, double> getArticulos(){
     return art;
  }
  void show(Map<String, double> mapa){
    int c = 0;
    for (var articulos in mapa.entries) {
      c++;
      print('-Producto $c: ${articulos.key} \$${articulos.value.toStringAsFixed(2)}');
    }
  }
  double PrecioTotal(){
    double Total = 0.0;
    art.forEach((articulo, precio) {
      Total += precio;
    });
    return Total;
  }
}


void main(){
  final datosCompra = tienda(
    name: 'Tienda de Prueba',
    art: {'Orquidea': 22.95, 'Escoba': 7.50},
    depto: Depto.depto2);
    Map<String, double> articulos = datosCompra.getArticulos();
    double totalPagar = datosCompra.PrecioTotal();
 // final ubicacion = Depto.depto1;
    

  switch (datosCompra.depto) {
    case Depto.depto1:
      print('**********Datos de Compra********** \n-Nombre Tienda: ' 
          '${datosCompra.name} \n-${datosCompra.depto} ');
//          '\n Productos: $articulos'
              datosCompra.show(articulos);
      print('-Total a Pagar: $totalPagar');
      break;
    case Depto.depto2:
      print('**********Datos de Compra********** \n-Nombre Tienda: ' 
          '${datosCompra.name} \n-${datosCompra.depto} ');
//          '\n Productos: $articulos'
              datosCompra.show(articulos);
      print('-Total a Pagar: $totalPagar');       
        break;
      case Depto.depto3:
      print('**********Datos de Compra********** \n-Nombre Tienda: ' 
          '${datosCompra.name} \n-${datosCompra.depto} ');
//          '\n Productos: $articulos'
              datosCompra.show(articulos);
      print('-Total a Pagar: $totalPagar');
        break;
      default:
    }
}