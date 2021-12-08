import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';

abstract class GetFinancialRepository{
  Future<FinancialEntity> call();
}