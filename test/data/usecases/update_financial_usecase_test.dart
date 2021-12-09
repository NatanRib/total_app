import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:total_app/layers/finance/data/datasources/update_financial_data_source.dart';
import 'package:total_app/layers/finance/data/errors/invalid_financial_update_error.dart';
import 'package:total_app/layers/finance/data/usecases/update_financial_usecase_impl.dart';
import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/enumerated/financial_type_enum.dart';
import 'package:total_app/layers/finance/domain/usecases/update_financial_usecase.dart';

class UpdateFinancialDatasourceMock extends Mock implements UpdateFinancialDatasource{}

void main() {
  late FinancialEntity updated;
  late UpdateFinancialUsecase systemUnderTest;
  late UpdateFinancialDatasource updateFinancialDatasource;

  setUp((){
    updateFinancialDatasource = UpdateFinancialDatasourceMock();
    systemUnderTest = UpdateFinancialUsecaseImpl(updateFinancialDatasource: updateFinancialDatasource);
    updated = FinancialEntity(id: 1, description: 'test', value: 300.0, installments: 3, type: FinancialType.passive, paid: false);
  });

  test('Should call datasource to update a financial by id and return updated financial', () async {
    //Arrange
    when(()=> updateFinancialDatasource(updated, 1)).thenAnswer((_) async => updated);
    
    //Act
    FinancialEntity result = await systemUnderTest(updated, 1);
    
    //Assert
    expect(result, updated);
  });

  test('Should throw InvalidFinancialUpdateError because the financial ids are diferent', () async {
    //Assert
    expect(()=> systemUnderTest(updated, 2), throwsA(isA<InvalidFinancialUpdateError>()));
  });
}