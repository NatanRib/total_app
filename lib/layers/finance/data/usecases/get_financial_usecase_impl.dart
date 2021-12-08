import 'package:total_app/layers/finance/data/datasources/get_financial_data_source.dart';
import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/usecases/get_financial_usecase.dart';

class GetFinancialUsecaseImpl implements GetFinancialUsecase {
  GetFinancialDataSource getFinancialDataSource;
  GetFinancialUsecaseImpl({required this.getFinancialDataSource});

  @override
  Future<FinancialEntity> call(int id) {
    return getFinancialDataSource(id);
  }
}
