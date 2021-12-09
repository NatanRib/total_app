import 'package:total_app/layers/finance/data/datasources/update_financial_data_source.dart';
import 'package:total_app/layers/finance/data/errors/invalid_financial_update_error.dart';
import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/usecases/update_financial_usecase.dart';

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