import 'package:auth_management/auth_management.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthRouteService extends BaseAuthRouteService {
  @override
  String get afterAuthRouteLocation => HomeRoute().location;

  @override
  List<RouteBase> get appRoute => $appRoutes;

}

final AuthRouteService authRouteService = AuthRouteService();
