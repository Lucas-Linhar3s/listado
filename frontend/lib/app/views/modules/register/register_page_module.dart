import 'package:dart_learning/app/views/modules/login/views/login_page.dart';
import 'package:dart_learning/app/views/modules/register/views/register_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterPageModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (_, __) => RegisterPage(),
        ),
        ChildRoute(
          '/register/',
          child: (_, __) => LoginPage(),
        ),
      ];
}
