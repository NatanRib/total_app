import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import './modules/modules.dart';
import './modules/app.dart';

main() {
  runApp(ModularApp(module: Modules(), child: const App()));
}