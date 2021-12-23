import 'package:total_app/features/finance/data/datasources/get_financial_data_source.dart';
import 'package:total_app/features/finance/domain/entities/financial_entity.dart';
import 'package:total_app/features/finance/domain/enumerated/financial_type_enum.dart';

class GetFinancialDataSourceMem implements GetFinancialDataSource {
  @override
  Future<FinancialEntity> call({required int id}) async {
    late FinancialEntity result;
    await Future.delayed(const Duration(seconds: 5), () {
      result = FinancialEntity(
          id: id,
          description: 'description',
          value: 4567.96,
          installments: 3,
          type: FinancialType.passive,
          paid: false);
    });
    return result;
  }
}
