import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';

abstract class UpdateFinancialDatasource{
  Future<FinancialEntity> call(FinancialEntity newFinancial, int id);
}