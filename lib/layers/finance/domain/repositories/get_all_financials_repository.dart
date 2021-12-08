import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';

abstract class GetAllFinancialsRepository {
  Future<List<FinancialEntity>> call();
}