enum Depto {
  depto1(
    categoria1: 'Cementos',
    categoria2: 'Maderas',
    categoria3: 'Bloques y Postes',
    departamento: 'Construccion',
  ),
  depto2(
    categoria1: 'Vivero',
    categoria2: 'Herramientas Agricolas y jardin',
    categoria3: 'Mascotas',
    departamento: 'Agricola y Jardin',
  ),
  depto3(
    categoria1: 'Dormitorio',
    categoria2: 'Articulos de Cocina',
    categoria3: 'Limpieza',
    departamento: 'Domestico',
  );

  final String categoria1;
  final String categoria2;
  final String categoria3;
  final String departamento;

  const Depto({
    required this.categoria1,
    required this.categoria2,
    required this.categoria3,
    required this.departamento,
  });

  @override
  String toString() => 'Departamento: $departamento \n-Categoria: $categoria1  \n-Categoria: $categoria2 \n-Categoria: $categoria3';
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