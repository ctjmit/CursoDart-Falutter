enum TipoCargo { director, profesor, empelado }

class Persona {
  String nombre;
  String apellido;
  final TipoCargo tipo;
  Persona({required this.nombre, required this.apellido, required this.tipo});
}

class Director extends Persona {
  double salario;
  Director(
      {required String nombreDirector,
      required String apellidDirector,
      required this.salario})
      : super(
            nombre: nombreDirector,
            apellido: apellidDirector,
            tipo: TipoCargo.director);
}

class Profesor extends Persona {
  double salario;
  Profesor(
      {required String nombreProfesor,
      required String apellidoProfesor,
      required this.salario})
      : super(
            nombre: nombreProfesor,
            apellido: apellidoProfesor,
            tipo: TipoCargo.profesor);
}

class Empleado extends Persona {
  double salario;
  Empleado(
      {required String nombreEmp,
      required String apellidoEmp,
      required this.salario})
      : super(
            nombre: nombreEmp, apellido: apellidoEmp, tipo: TipoCargo.empelado);
}

void main() {
  final Director cargoDirector =
      Director(nombreDirector: 'Mateo', apellidDirector: 'Cruz', salario: 1200);
  final Profesor cargoProfe = Profesor(
      nombreProfesor: 'claudia', apellidoProfesor: 'lopez', salario: 700);
  final Empleado cargoEmp =
      Empleado(nombreEmp: 'romeo', apellidoEmp: 'argueta', salario: 300);
  print("${cargoDirector.tipo}");
  print(
      'Datos del director: ${cargoDirector.nombre}  ${cargoDirector.apellido}, ${cargoDirector.salario} ');
  print("${cargoProfe.tipo}");
  print(
      'Datos del profesor: ${cargoProfe.nombre}  ${cargoProfe.apellido}, ${cargoProfe.salario} ');
  print("${cargoEmp.tipo}");
  print(
      'Datos del empleado: ${cargoEmp.nombre}  ${cargoEmp.apellido}, ${cargoEmp.salario} ');
}