import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../view/screens/home_screen.dart';

final List<RouteBase> routes = [
  GoRoute(
    path: '/',
    name: HomeScreen.screenName,
    builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
  ),
  // GoRoute(
  //   path: '/buttons',
  //   name: ButtonsScreen.screenName,
  //   builder: (BuildContext context, GoRouterState state) =>
  //       const ButtonsScreen(),
  // ),
];
