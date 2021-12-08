import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:total_app/layers/finance/data/usecases/get_financial_usecase.dart';
import 'package:total_app/layers/finance/domain/repositories/get_financial_repository.dart';

import 'get_all_financials_usecase_test.dart';

class GetFinancialRepositoryMock extends Mock implements GetFinancialRepository{} 

void main() {
  test('Should call getFinancialRepository to get especific financial', (){
    //Arrange
    final getFinancialRepository = GetAllFinancialRepositoryMock();
    final systemUnderTest = GetFinancialUsecaseImpl();    

    //Act
    systemUnderTest(2);
    
    //Assert
    verify(()=> getFinancialRepository()).called(1);
  });
}