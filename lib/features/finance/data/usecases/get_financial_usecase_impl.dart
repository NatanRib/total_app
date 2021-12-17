import '../../data/datasources/get_financial_data_source.dart';
import '../../domain/entities/financial_entity.dart';
import '../../domain/usecases/get_financial_usecase.dart';

class GetFinancialUsecaseImpl implements GetFinancialUsecase {
  GetFinancialDataSource getFinancialDataSource;
  GetFinancialUsecaseImpl({required this.getFinancialDataSource});

  @override
  Future<FinancialEntity> call(int id) {
    return getFinancialDataSource(id);
  }
}
