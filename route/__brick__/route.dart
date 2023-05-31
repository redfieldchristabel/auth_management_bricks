import 'dart:html';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'route.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      body: Center(child: Text("Hello World")),
    );
  }
}

//this is example if there are 2 routes in one dart file
@TypedGoRoute<SecondRoute>(path: '/')
class SecondRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Scaffold(
      body: Center(child: Text("This is second route")),
    );
  }
}
