import 'package:flutter_test/flutter_test.dart';

import 'package:total_app/layers/finance/data/usecases/get_all_financials_usecase_impl.dart';
import 'package:total_app/layers/finance/domain/entities/financial_entity.dart';
import 'package:total_app/layers/finance/domain/repositories/get_all_financials_repository.dart';

import 'package:mocktail/mocktail.dart';

class GetAllFinancialRepositoryMock extends Mock implements GetAllFinancialsRepository{}

void main() {
  test('Should call GetAllFinancialRepository to get a list of all financials', () async{  
    //Arrange
    final getAllFinancialRepository = GetAllFinancialRepositoryMock();
    final systemUnderTest = GetAllFinancialsUsecaseImpl(repository: getAllFinancialRepository);
    when(()=> getAllFinancialRepository()).thenAnswer((_)async => []);

    //Act
    systemUnderTest();
    
    //Assert
    verify(()=> getAllFinancialRepository()).called(1);
  });
}