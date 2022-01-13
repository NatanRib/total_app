import 'package:flutter_modular/flutter_modular.dart';

import '../modules/finance/finance_module.dart';
import '../modules/home_page.dart';

class Modules extends Module{
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => super.binds;

  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomePage()),
    ModuleRoute('/finance', module: FinanceModule())
  ];
}