import 'package:flutter/material.dart';
import '../../controller/novel_controler.dart';

// Ejemplo de vista
class NovelScreen extends StatelessWidget {
  final NovelController controller;

  NovelScreen(this.controller);

  @override
  Widget build(BuildContext context) {
    // Implementa la interfaz de usuario para mostrar la novela actual
    // Utiliza el controlador para obtener datos y manejar eventos
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.currentNovel.title),
      ),
      body: ListView.builder(
        itemCount: controller.currentNovel.chapters.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(controller.currentNovel.chapters[index].title),
            onTap: () {
              // Lógica para cargar y mostrar el contenido del capítulo
              controller.loadChapter(index.toString());
            },
          );
        },
      ),
    );
  }
}
