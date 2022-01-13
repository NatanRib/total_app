import '../../domain/entities/financial_entity.dart';

abstract class GetFinancialUsecase{
  Future<FinancialEntity> call({required int id}); 
}