import '../../domain/entities/financial_entity.dart';

abstract class UpdateFinancialDatasource{
  Future<FinancialEntity> call(FinancialEntity newFinancial, int id);
}