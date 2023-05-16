import 'package:auth_management/auth_management.dart';
import 'package:isar/isar.dart';

class AuthService extends BaseAuthService {
  get isar => BaseAuthService.isar;

  @override
  // TODO: implement usersIsar
  IsarCollection<BaseUser> get usersIsar => throw UnimplementedError();
}

final AuthService authService = AuthService();