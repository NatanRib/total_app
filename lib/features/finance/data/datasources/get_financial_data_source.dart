import '../../domain/entities/financial_entity.dart';

abstract class GetFinancialDataSource {
  Future<FinancialEntity> call({required int id});
}