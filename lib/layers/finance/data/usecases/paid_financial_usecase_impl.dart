import 'package:total_app/layers/finance/data/datasources/paid_financial_data_source.dart';
import 'package:total_app/layers/finance/domain/usecases/paid_financial_usecase.dart';

class PaidFinancialUsecaseImpl implements PaidFinancialUsecase{
  PaidFinancialDataSource paidFinancialDataSource;
  PaidFinancialUsecaseImpl({required this.paidFinancialDataSource});

  @override
  void call(int id) {
    paidFinancialDataSource(id);
  }
}