import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'finance/presentation/ui/android/all_financial_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  final Color baseColor= Colors.grey[300]!;
  final Color emphasisColor = Colors.red[800]!;
  final Color emphasis2Color = Colors.white;
    return MaterialApp(
      home: const AllFinancialPage(),
      theme: ThemeData(
          primaryColor: baseColor,
          appBarTheme: AppBarTheme(
              elevation: 0,
              backgroundColor: emphasisColor,
              titleTextStyle: TextStyle(color: emphasis2Color, fontSize: 18)),
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
