import 'package:total_app/features/finance/data/datasources/create_financial_datasource.dart';
import 'package:total_app/features/finance/domain/entities/financial_entity.dart';

class CreateFinancialDatasoruceMem implements CreateFinancialDataSource {
  @override
  Future<int> call({required FinancialEntity financial}) async {
    late int id;
    await Future.delayed(const Duration(seconds: 5), () {
      id = 1;
    });
    return id;
  }
}
