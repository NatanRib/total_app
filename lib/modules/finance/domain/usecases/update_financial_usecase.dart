import '../../domain/entities/financial_entity.dart';

abstract class UpdateFinancialUsecase{
  Future<FinancialEntity> call({required FinancialEntity updatedFinancial, required int id});
}