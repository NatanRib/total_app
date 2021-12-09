import 'package:total_app/layers/finance/data/datasources/create_financial_datasource.dart';
import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/usecases/create_financial_usecase.dart';

class CreateFinancialUsecaseImpl implements CreateFinancialUsecase{
  CreateFinancialDataSource createFinancialDatasource;
  CreateFinancialUsecaseImpl({required this.createFinancialDatasource});

  @override
  Future<int> call(FinancialEntity financial) {
    return createFinancialDatasource(financial);
  }
  
}