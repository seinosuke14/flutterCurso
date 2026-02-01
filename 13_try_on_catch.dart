void main() async {
  print('inicio del programa');

//try catch sirve para capturar errores
  try {
    final value = await httpGet('http.alo.com');
    print('Exito:$value');
  } on Exception catch (error) {
    print('tenemos una exception, $error');
  } catch (error) {
    print('Algo increiblemente salio mal: $error');
  } finally {
    print('fin del try and catch');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));
  throw Exception('no existen parametros en el url');

  // throw Exception('error al enviar la peticion');

  // return 'respuesta de la peticion http';
}
