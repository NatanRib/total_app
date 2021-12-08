import '../entities/financial_entity.dart';

abstract class GetAllFinancialUsecase {
  List<FinancialEntity> call();
}
