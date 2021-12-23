import 'package:flutter_test/flutter_test.dart';
import 'package:total_app/features/finance/data/datasources/update_financial_data_source.dart';
import 'package:total_app/features/finance/domain/entities/financial_entity.dart';
import 'package:total_app/features/finance/domain/enumerated/financial_type_enum.dart';
import 'package:total_app/features/infra/datasources/memory/update_financial_data_source_mem.dart';

main(){
  test('Should update a financial', () async {
    //Arrange
    UpdateFinancialDatasource systemUnderTest = UpdateFinancialDataSourceMem();
    final updatedFinancial = FinancialEntity(id: 2, description: 'description', value: 1200.0, installments: 2, type: FinancialType.active, paid: false); 

    //Act
    final result = await systemUnderTest(id: 2, updatedFinancial: updatedFinancial); 
    
    //Assert
    expect(result, updatedFinancial);
  });
}