import 'package:auth_management/services/base_auth_service.dart';


class AuthService extends BaseAuthService {
    
    get isar => BaseAuthService.isar;
}

final AuthService authService = AuthService();