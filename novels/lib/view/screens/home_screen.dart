import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String screenName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: Container(
                color: Colors.cyan,
                child: Column(
                  children: [
                    Container(
                      width: 150,
                      height: 100,
                      margin: const EdgeInsets.only(bottom: 10, top: 50),
                      child: Image.asset('resource/images/logoUnovels.png'),
                    ),
                    const Text('UNovels', style: TextStyle(fontSize: 25)),
                    Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      color: Colors.cyan[300],
                      child: const Text(
                        "Menu1",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      color: Colors.cyan[300],
                      child: const Text(
                        "Menu2",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      color: Colors.cyan[300],
                      child: const Text(
                        "Menu3",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 1),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      color: Colors.cyan[300],
                      child: const Text(
                        "Menu4",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ))),
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text('UNovels'),
        ),
        body: const NovelList(),
      );
  }
}

class NovelList extends StatelessWidget {
  const NovelList({super.key});

  @override
  Widget build(BuildContext context) {
    // Aquí debes construir la lista de novelas
    return Container(
      // Implementa tu lógica para mostrar las imágenes de las novelas
      child: ListView(
        children: const [
          NovelCard(imageUrl: 'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg'),
          NovelCard(imageUrl: 'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg'),
          NovelCard(imageUrl: 'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg'),
          NovelCard(imageUrl: 'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg'),
          NovelCard(imageUrl: 'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg'),
          NovelCard(imageUrl: 'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg'),
          NovelCard(imageUrl: 'https://m.media-amazon.com/images/I/71ZDOWL7SnL._AC_SY879_.jpg'),
                    // Agrega más NovelCard según sea necesario
        ],
      ),
    );
  }
}

class NovelCard extends StatelessWidget {
  final String imageUrl;

  const NovelCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(imageUrl, height: 150, width: 150), // Ajusta el tamaño según sea necesario
          // Puedes agregar más detalles de la novela aquí si lo deseas
        ],
      ),
    );
  }
}
