import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:total_app/layers/finance/data/datasources/create_financial_datasource.dart';
import 'package:total_app/layers/finance/data/usecases/create_financial_usecase_impl.dart';
import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/enumerated/financial_type_enum.dart';
import 'package:total_app/layers/finance/domain/usecases/create_financial_usecase.dart';

class CreateFinancialDataSourceMock extends Mock implements CreateFinancialDataSource{}
void main() {
  
  test('Should call repository to create a new financial and return the id of created financial', ()async {
    CreateFinancialDataSource createFinancialDataSource = CreateFinancialDataSourceMock();
    CreateFinancialUsecase systemUnderTest = CreateFinancialUsecaseImpl(createFinancialDatasource: createFinancialDataSource);
    FinancialEntity financial = FinancialEntity(id: 2, description: 'teste', value: 120.0, installments: 5, type: FinancialType.passive, paid: false);
    when(()=> createFinancialDataSource(financial)).thenAnswer((_) async=> financial.id);

    final result = await systemUnderTest(financial);

    expect(result, financial.id); 
  });
}