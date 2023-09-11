
enum departamento { taller, herramientas, cocina}
enum categoria {mecanica, electricidad, muebles }
abstract class Supertienda {
  String nombre;
  final departamento type;
  final categoria type2;
  Supertienda({
    required this.nombre,
    required this.type,
    required this.type2
  });
}

class Articulo extends Supertienda {
  int cantidad;
  Articulo(
    { required String nombreArt, 
    required this.cantidad}) 
  : super(
      nombre: nombreArt,
      type: departamento.cocina,
      type2: categoria.muebles
    );

}

void main(){
  List<Articulo> articulo = [
    Articulo(nombreArt: 'Silla',cantidad: 5)
  ];
  for (var art in articulo) {
    print('${art.type} \n ${art.type2} \n ${art.nombre} = ${art.cantidad}');
  }
  

}
 

