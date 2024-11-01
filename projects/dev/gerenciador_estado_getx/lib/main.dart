import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MaterialApp(
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
