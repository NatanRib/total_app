import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:total_app/layers/finance/data/datasources/update_financial_data_source.dart';
import 'package:total_app/layers/finance/data/usecases/update_financial_usecase_impl.dart';
import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/enumerated/financial_type_enum.dart';
import 'package:total_app/layers/finance/domain/usecases/update_financial_usecase.dart';

class UpdateFinancialDatasourceMock extends Mock implements UpdateFinancialDatasource{}

void main() {
  test('Should call datasource to update a financial by id and return updated financial', () async {
    //Arrange
    UpdateFinancialDatasource updateFinancialDatasource = UpdateFinancialDatasourceMock();
    UpdateFinancialUsecase systemUnderTest = UpdateFinancialUsecaseImpl(updateFinancialDatasource: updateFinancialDatasource);
    FinancialEntity updated = FinancialEntity(id: 1, description: 'test', value: 300.0, installments: 3, type: FinancialType.passive, paid: false);
    when(()=> updateFinancialDatasource(updated, 1)).thenAnswer((_) async => updated);
    
    //Act
    FinancialEntity result = await systemUnderTest(updated, 1);
    
    //Assert
    expect(result, updated);
  });
}