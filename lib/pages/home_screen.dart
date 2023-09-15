import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:api_golioth/api/golioth.dart';

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
    final response = await Dio().get('https://api.golioth.io/swagger.json');
    golioth = Golioth.fromJson(response.data);
    print(golioth);
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('API REST Golioth'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text('Hello'),
          ],
        ),
      ),
    );
  }
}
