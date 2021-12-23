import '../../data/datasources/paid_financial_data_source.dart';
import '../../domain/usecases/paid_financial_usecase.dart';

class PaidFinancialUsecaseImpl implements PaidFinancialUsecase{
  PaidFinancialDataSource paidFinancialDataSource;
  PaidFinancialUsecaseImpl({required this.paidFinancialDataSource});

  @override
  void call({required int id}) {
    paidFinancialDataSource(id);
  }
}