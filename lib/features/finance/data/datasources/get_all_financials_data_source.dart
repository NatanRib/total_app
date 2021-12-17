import '../../domain/entities/financial_entity.dart';

abstract class GetAllFinancialsDataSource{
  Future<List<FinancialEntity>> call();
}