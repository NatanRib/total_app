import '../../data/datasources/get_all_financials_data_source.dart';
import '../../domain/entities/financial_entity.dart';
import '../../domain/usecases/get_all_financials_usecase.dart';

class GetAllFinancialsUsecaseImpl implements GetAllFinancialsUsecase {
  GetAllFinancialsDataSource getAllFinancialsDatasource;
  GetAllFinancialsUsecaseImpl({required this.getAllFinancialsDatasource});

  @override
  Future<List<FinancialEntity>> call() {
    return getAllFinancialsDatasource();
  }
}
