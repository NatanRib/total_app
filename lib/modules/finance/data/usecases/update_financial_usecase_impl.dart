import '../../data/datasources/update_financial_data_source.dart';
import '../../data/errors/invalid_financial_update_error.dart';
import '../../domain/entities/financial_entity.dart';
import '../../domain/usecases/update_financial_usecase.dart';

class UpdateFinancialUsecaseImpl implements UpdateFinancialUsecase{
  UpdateFinancialDatasource updateFinancialDatasource;
  UpdateFinancialUsecaseImpl({required this.updateFinancialDatasource});
  
  @override
  Future<FinancialEntity> call({required FinancialEntity updatedFinancial, required int id}) {
    if (updatedFinancial.id != id){
      throw InvalidFinancialUpdateError();
    }
    return updateFinancialDatasource(updatedFinancial: updatedFinancial, id: id);
  }
  
}