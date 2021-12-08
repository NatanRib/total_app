import '../entities/financial_entity.dart';

abstract class GetAllFinancialsUsecase {
  List<FinancialEntity> call();
}
