import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(
      GetMaterialApp(
        home: App(),
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
                  Get.to(SegundaPagina());
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
            ElevatedButton(
              onPressed: () {
                Get.to(App());
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
