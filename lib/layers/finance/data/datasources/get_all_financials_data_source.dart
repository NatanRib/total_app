import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';

abstract class GetAllFinancialsDataSource{
  Future<List<FinancialEntity>> call();
}