import '../../../data/datasources/create_financial_datasource.dart';
import '../../../domain/entities/financial_entity.dart';

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
