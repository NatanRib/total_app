import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';

abstract class GetFinancialUsecase{
  Future<FinancialEntity> call(int id); 
}