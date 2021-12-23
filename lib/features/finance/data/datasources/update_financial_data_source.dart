import '../../domain/entities/financial_entity.dart';

abstract class UpdateFinancialDatasource{
  Future<FinancialEntity> call({required FinancialEntity updatedFinancial, required int id});
}