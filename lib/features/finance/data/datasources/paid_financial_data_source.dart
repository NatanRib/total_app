import 'package:total_app/features/finance/domain/entities/financial_entity.dart';

abstract class PaidFinancialDataSource{
  void call(int id);
}