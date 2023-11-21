// Ejemplo de modelo de novela
class Novel {
  String title;
  List<Chapter> chapters;

  Novel({required this.title, required this.chapters});
}

class Chapter {
  String title;
  String content;

  Chapter({required this.title, required this.content});
}
