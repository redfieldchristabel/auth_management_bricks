import 'package:auth_management/auth_management.dart';
import 'package:isar/isar.dart';

class AuthService extends BaseAuthService{{user_model.pascalCase()}} {
  get isar => BaseAuthService.isar;

  @override
  // TODO: implement usersIsar
  IsarCollection<{{user_model.pascalCase()}}> get usersIsar => throw UnimplementedError();
}

final AuthService authService = AuthService();