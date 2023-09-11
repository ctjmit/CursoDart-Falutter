// como se maneja la clase async

void main(){
  print('Inicio del programa');

  httpGet('https://google.com')
    .then(
      (value){
        print(value);
      })
      .catchError((err){
        print('Error: $err');
      });
      print('Fin del programa');
}

Future<String> httpGet(String url ){
// primer parametro const Duration(seconds: 1),segundo parametro() y el segundo parametro () se considera una funcion anonima
  return Future.delayed(const Duration(seconds: 1), () {  
    throw 'Error en la peticion http';
  });
}