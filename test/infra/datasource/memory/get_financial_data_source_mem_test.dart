import 'package:flutter_test/flutter_test.dart';
import 'package:total_app/modules/finance/domain/entities/financial_entity.dart';
import 'package:total_app/modules/finance/domain/enumerated/financial_type_enum.dart';
import 'package:total_app/modules/finance/infra/datasources/memory/get_financial_data_source_mem.dart';

main() {
  test('Should get a financialEntity with determined id from memory', () async {
    //Arrange
    GetFinancialDataSourceMem systemUnderTest = GetFinancialDataSourceMem();
    int idExpected = 1;
    FinancialEntity test = FinancialEntity(
        id: idExpected,
        description: 'description',
        value: 1234,
        installments: 3,
        type: FinancialType.passive,
        paid: false);

    //Act
    final result = await systemUnderTest(id: idExpected);

    //Assert
    expect(result.id, test.id);
  });
}
