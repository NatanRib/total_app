import '../../data/datasources/create_financial_datasource.dart';
import '../../domain/entities/financial_entity.dart';
import '../../domain/usecases/create_financial_usecase.dart';

class CreateFinancialUsecaseImpl implements CreateFinancialUsecase{
  CreateFinancialDataSource createFinancialDatasource;
  CreateFinancialUsecaseImpl({required this.createFinancialDatasource});

  @override
  Future<int> call(FinancialEntity financial) {
    return createFinancialDatasource(financial);
  }
  
}