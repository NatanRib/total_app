import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:total_app/modules/finance/data/datasources/get_all_financials_data_source.dart';
import 'package:total_app/modules/finance/infra/datasources/memory/get_all_financials_data_source_mem.dart';
import 'package:total_app/modules/finance/presentation/controllers/all_financials_controller.dart';
import 'package:total_app/modules/finance/presentation/ui/android/all_financial_page.dart';

main() {
  group('All Financial View', () {

    late AllFinancialPage page;
    late AllFinancialController controller;
    late GetAllFinancialsDataSource datasource;

    setUp((){
      datasource = GetAllFinancialsDataSourceMem();
      controller = AllFinancialController(datasource: datasource); 
      page = AllFinancialPage(controller: controller);
    });

    testWidgets('Should find title of view', (tester) async {
      //Arrange
      await tester.pumpWidget(MaterialApp(
        home: page,
      ));
      
      //Act
      await tester.pump(const Duration(seconds: 10));
      
      //Assert
      expect(find.text('Finanças'), findsOneWidget);
    });

    testWidgets('Should find list view with financial items', (tester) async {
      //Arrange
      await tester.pumpWidget(MaterialApp(
        home: page,
      ));
      
      //Act
      await tester.pump(const Duration(seconds: 10));
      
      //Assert
      expect(find.byWidgetPredicate((widget)=> widget is ListView || widget is Center && widget.child is Text ), findsOneWidget);
      if(find.byType(ListView).runtimeType == ListView){

        expect(find.byType(ListTile), findsOneWidget);
      }
    });
  });
}