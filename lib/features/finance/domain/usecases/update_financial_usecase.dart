import '../../domain/entities/financial_entity.dart';

abstract class UpdateFinancialUsecase{
  Future<FinancialEntity> call(FinancialEntity newFinancial, int id);
}