import '../../domain/entities/financial_entity.dart';

abstract class CreateFinancialUsecase {
  Future<int> call({required FinancialEntity financial});
}