import 'package:total_app/features/finance/data/datasources/update_financial_data_source.dart';
import 'package:total_app/features/finance/domain/entities/financial_entity.dart';

class UpdateFinancialDataSourceMem implements UpdateFinancialDatasource{
  @override
  Future<FinancialEntity> call({required FinancialEntity updatedFinancial, required int id}) async {
    await Future.delayed(const Duration(seconds: 3));
    return updatedFinancial;
  }
  
}