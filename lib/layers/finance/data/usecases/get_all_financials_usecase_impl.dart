import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/repositories/get_all_financials_repository.dart';
import 'package:total_app/layers/finance/domain/usecases/get_all_financials_usecase.dart';

class GetAllFinancialsUsecaseImpl implements GetAllFinancialsUsecase{
  GetAllFinancialsRepository repository;
  GetAllFinancialsUsecaseImpl({required this.repository});

  @override
  List<FinancialEntity> call() {
    List<FinancialEntity> result = [];
    repository().then((value) => result = value);
    return result;
  }

}