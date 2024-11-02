import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(
      GetMaterialApp(
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => App()),
          GetPage(name: '/tela2', page: () => SegundaPagina()),
        ],
      ),
    );

class Controller extends GetxController {
  String titulo = 'Aplicativo GetX TM';
  var valor = 0;

  void incrementaValor() {
    valor++;
    update();
  }
}

class App extends StatelessWidget {
  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(controller.titulo),
        ),
        body: Center(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Clicks: ${controller.valor}',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/tela2',
                      arguments: ['Dados tela 1', 'Dados tela 1']);
                },
                child: const Text('Página Dois'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => controller.incrementaValor(),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class SegundaPagina extends StatelessWidget {
  final Controller crtl = Get.find();

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('${crtl.valor}'),
            Text(Get.arguments[0]),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
