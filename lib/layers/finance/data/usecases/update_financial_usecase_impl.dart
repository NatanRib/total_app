import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/usecases/update_financial_usecase.dart';

class UpdateFinancialUsecaseImpl implements UpdateFinancialUsecase{
  @override
  Future<FinancialEntity> call(FinancialEntity newFinancial, int id) {
    // TODO: implement call
    throw UnimplementedError();
  }
  
}