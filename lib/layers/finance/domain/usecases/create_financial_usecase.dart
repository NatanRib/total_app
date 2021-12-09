import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';

abstract class CreateFinancialUsecase {
  Future<int> call(FinancialEntity financial);
}