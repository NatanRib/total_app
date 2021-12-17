import '../../data/datasources/update_financial_data_source.dart';
import '../../data/errors/invalid_financial_update_error.dart';
import '../../domain/entities/financial_entity.dart';
import '../../domain/usecases/update_financial_usecase.dart';

class UpdateFinancialUsecaseImpl implements UpdateFinancialUsecase{
  UpdateFinancialDatasource updateFinancialDatasource;
  UpdateFinancialUsecaseImpl({required this.updateFinancialDatasource});
  
  @override
  Future<FinancialEntity> call(FinancialEntity newFinancial, int id) {
    if (newFinancial.id != id){
      throw InvalidFinancialUpdateError();
    }
    return updateFinancialDatasource(newFinancial, id);
  }
  
}