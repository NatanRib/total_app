import 'package:flutter_test/flutter_test.dart';

import 'package:total_app/features/finance/data/datasources/get_financial_data_source.dart';
import 'package:total_app/features/finance/data/usecases/get_financial_usecase_impl.dart';
import 'package:total_app/features/finance/domain/entities/financial_entity.dart';
import 'package:total_app/features/finance/domain/enumerated/financial_type_enum.dart';

import 'package:mocktail/mocktail.dart';

class GetFinancialDataSourceMock extends Mock implements GetFinancialDataSource{} 

void main() {
  late GetFinancialDataSource getFinancialDataSource;
  late GetFinancialUsecaseImpl systemUnderTest;
  late FinancialEntity financialEntityTest;

  setUp((){  
    //arrange
    financialEntityTest =  FinancialEntity(installments: 2, type: FinancialType.active, id: 1, description: "Cerca", value: 100, paid: false); 
    getFinancialDataSource = GetFinancialDataSourceMock();
    systemUnderTest = GetFinancialUsecaseImpl(getFinancialDataSource: getFinancialDataSource);
  });

  test('Should call getFinancialRepository to get especific financial', (){
    //Arrange
    when(()=> getFinancialDataSource(2)).thenAnswer((_) async => financialEntityTest);
    //Act
    systemUnderTest(2);
    //Assert
    verify(()=> getFinancialDataSource(2)).called(1);
    
  });

  test('Should call the method and return especific financial by id', ()async{
    //Arrange
    when(()=> getFinancialDataSource(2)).thenAnswer((_) async => financialEntityTest);
    //Act
    final test = await systemUnderTest(2);
    //Assert
    expect(test, financialEntityTest);
  });
}