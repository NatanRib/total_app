import 'package:flutter_test/flutter_test.dart';

import 'package:total_app/modules/finance/domain/entities/financial_entity.dart';
import 'package:total_app/modules/finance/domain/enumerated/financial_type_enum.dart';
import 'package:total_app/modules/finance/infra/datasources/memory/create_financial_data_source_mem.dart';

main() {
  test('Should create a FinancialEntity and return your id', () async {
    //Arrange
    CreateFinancialDatasoruceMem systemUnderTest = CreateFinancialDatasoruceMem();
    FinancialEntity entityTest = FinancialEntity(id: 1, description: 'description', value: 1900, installments: 3, type: FinancialType.active, paid: false); 

    //Act
    final result = await systemUnderTest(financial: entityTest);

    //Assert
    expect(result, 1);
  });
}
