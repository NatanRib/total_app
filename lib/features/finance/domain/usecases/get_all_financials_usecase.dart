import '../entities/financial_entity.dart';

abstract class GetAllFinancialsUsecase {
  Future<List<FinancialEntity>> call();
}
