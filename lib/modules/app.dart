import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'finance/infra/datasources/memory/get_all_financials_data_source_mem.dart';
import 'finance/presentation/controllers/all_financials_controller.dart';
import 'finance/presentation/ui/android/all_financial_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  final Color baseColor= Colors.grey[300]!;
  final Color emphasisColor = Colors.red[800]!;
    return MaterialApp(
      home: const AllFinancialPage(),
      theme: ThemeData(
          primaryColor: baseColor,
          appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: emphasisColor,
              titleTextStyle: TextStyle(color: baseColor, fontSize: 18)),
          backgroundColor: baseColor,
          progressIndicatorTheme: ProgressIndicatorThemeData(
            circularTrackColor: emphasisColor,
            color: baseColor
          ),
          scaffoldBackgroundColor: baseColor,
        ),
    ).modular();
  }
}
