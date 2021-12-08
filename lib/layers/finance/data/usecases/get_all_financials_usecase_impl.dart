import 'package:total_app/layers/finance/data/datasources/get_all_financials_data_source.dart';
import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/usecases/get_all_financials_usecase.dart';

class GetAllFinancialsUsecaseImpl implements GetAllFinancialsUsecase {
  GetAllFinancialsDataSource getAllFinancialsDatasource;
  GetAllFinancialsUsecaseImpl({required this.getAllFinancialsDatasource});

  @override
  Future<List<FinancialEntity>> call() {
    return getAllFinancialsDatasource();
  }
}
