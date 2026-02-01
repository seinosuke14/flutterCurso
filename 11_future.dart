void main() {
  print('inicio del programa');

  httpGet('http.alo.com').then((value) {
    print(value);
  }).catchError((error) {
    print('error: $error');
  });

  print('fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 5), () {
    throw Exception('error al enviar la peticion');

    // return 'respuesta de la peticion http';
  });
}
