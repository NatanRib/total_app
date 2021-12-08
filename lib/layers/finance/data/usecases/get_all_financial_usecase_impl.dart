import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/repositories/get_all_financial_repository.dart';
import 'package:total_app/layers/finance/domain/usecases/get_all_financial_usecase.dart';

class GetAllFinancialUsecaseImpl implements GetAllFinancialUsecase{
  GetAllFinancialRepository repository;
  GetAllFinancialUsecaseImpl({required this.repository});

  @override
  List<FinancialEntity> call() {
    List<FinancialEntity> result = [];
    repository().then((value) => result = value);
    return result;
  }

}