import '../../domain/entities/financial_entity.dart';

abstract class CreateFinancialDataSource{
  Future<int> call(FinancialEntity financial);
}