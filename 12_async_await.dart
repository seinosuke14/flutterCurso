void main() async {
  print('inicio del programa');

//try catch sirve para capturar errores
  try {
    final value = await httpGet('http.alo.com');
    print(value);
  } catch (error) {
    print(error);
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('error al enviar la peticion');

  // return 'respuesta de la peticion http';
}
