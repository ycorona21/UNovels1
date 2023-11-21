import 'package:UNovels/config/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:UNovels/config/router/app_router.dart';
import 'package:UNovels/config/theme/app_theme.dart';
import 'package:UNovels/view/provider/theme_provider.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
      title: 'UNovels',
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      routerConfig: appRouter,
    );
  }
}

// class MyApp extends StatelessWidget {
//   final NovelController novelController = NovelController(initialNovel);

//   MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }



// Novel initialNovel = Novel(
//   title: 'Mi Primera Novela',
//   chapters: [
//     Chapter(title: 'Capítulo 1', content: 'Contenido del Capítulo 1...'),
//     Chapter(title: 'Capítulo 2', content: 'Contenido del Capítulo 2...'),
//     // Puedes agregar más capítulos según sea necesario
//   ],
// );
