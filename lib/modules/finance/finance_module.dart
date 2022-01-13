import 'package:flutter_modular/flutter_modular.dart';
import 'package:total_app/modules/finance/data/datasources/get_all_financials_data_source.dart';
import 'package:total_app/modules/finance/infra/datasources/memory/get_all_financials_data_source_mem.dart';
import 'package:total_app/modules/finance/presentation/controllers/all_financials_controller.dart';
import 'package:total_app/modules/finance/presentation/ui/android/all_financial_page.dart';

class FinanceModule extends Module {
  @override
  // TODO: implement binds
  List<Bind<Object>> get binds => [
    Bind.lazySingleton<GetAllFinancialsDataSource>((i) => GetAllFinancialsDataSourceMem()),
    Bind.lazySingleton<AllFinancialController>((i) => AllFinancialController(datasource: i()))
  ];

  @override
  // TODO: implement routes
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args)=> const AllFinancialPage())
  ];
}