import 'package:flutter_test/flutter_test.dart';
import 'package:total_app/layers/finance/data/usecases/update_financial_usecase_impl.dart';
import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/enumerated/financial_type_enum.dart';
import 'package:total_app/layers/finance/domain/usecases/update_financial_usecase.dart';

void main() {
  test('Should call datasource to update a financial by id and return updated financial', () async {
    UpdateFinancialUsecase systemUnderTest = UpdateFinancialUsecaseImpl();
    FinancialEntity updated = FinancialEntity(id: 1, description: 'test', value: 300.0, installments: 3, type: FinancialType.passive, paid: false);

    FinancialEntity result = await systemUnderTest(updated, 1);

    expect(result, updated);
  });
}