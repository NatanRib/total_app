import 'package:flutter_test/flutter_test.dart';
import 'package:total_app/modules/finance/domain/entities/financial_entity.dart';
import 'package:total_app/modules/finance/domain/enumerated/financial_type_enum.dart';

main(){

  test('Should calculate total value correctly', (){
    //Arrange
    FinancialEntity systemUnderTest = FinancialEntity(id: 1, description: "description", value: 120, installments: 2, type: FinancialType.active, paid: false);
    
    //Assert
    expect(systemUnderTest.totalValue, 240.0); 
  });
}