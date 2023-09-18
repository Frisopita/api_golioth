import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:api_golioth/api/golioth.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Importo mi clase Golioth donde esta la info de mi API
  Golioth? golioth;

  //Inicializo mi funcion del future
  @override
  void initState() {
    super.initState();
    getApiGolioth();
  }

  //Agrego un future para acceder a la api de golioth

  Future<void> getApiGolioth() async {
    try {
      final Uri uri = Uri.parse("https://api.golioth.io/v1/projects/sk-iot/devices?x-api-key=CjV9MziBnPZ3Ou4ZUEh4Fvo3DEEjTLPS");
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        // Si mi solicitud fue exitosa, convierte la respuesta JSON a un objeto Golioth
        golioth = goliothFromJson(response.body);
        print('Holis');
        print(golioth);
        setState(() {});
      } else {
        // Manejar errores de respuesta no exitosa aqu¨ª, por ejemplo, mostrar un mensaje de error
        print("Error en la solicitud de API: ${response.statusCode}");
      }
    } catch (error) {
      // Manejar errores de red u otros errores aqu¨ª
      print("Error en la solicitud de red/otro: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    // Verificar si golioth no es nulo y tiene elementos en la lista
    if (golioth != null && golioth!.list.isNotEmpty) {
      final firstElement = golioth!.list?.first;
      // Acceder al id y al nombre
      final id = firstElement?.id;
      final name = firstElement?.name;
      
      // Acceder al primer elemento de la lista (puedes ajustar esto seg¨²n tus necesidades)
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('API REST Golioth ID'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('API REST Golioth ID: $id'),
              Text('Nombre: $name'),
            ],
          ),
        ),
      );
    } else {
      // Manejar el caso en el que golioth es nulo o la lista est¨¢ vac¨ªa
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('API REST Golioth - Sin datos disponibles'),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('No se encontraron datos disponibles.'),
            ],
          ),
        ),
      );
    }
  }
}
