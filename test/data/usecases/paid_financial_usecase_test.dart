import 'package:flutter_test/flutter_test.dart';

import 'package:total_app/modules/finance/data/datasources/paid_financial_data_source.dart';
import 'package:total_app/modules/finance/data/usecases/paid_financial_usecase_impl.dart';
import 'package:total_app/modules/finance/domain/usecases/paid_financial_usecase.dart';

import 'package:mocktail/mocktail.dart';

class PaidFinancialDataSourceMock extends Mock implements PaidFinancialDataSource{}

void main() {
  test('should call the datasource to paid a financial by id', (){
    //Arrange
    PaidFinancialDataSource  paidFinancialDataSource = PaidFinancialDataSourceMock(); 
    PaidFinancialUsecase systemUnderTest = PaidFinancialUsecaseImpl(paidFinancialDataSource: paidFinancialDataSource);

    //Act
    systemUnderTest(id: 2);
    
    //Assert
    verify(()=> paidFinancialDataSource(2)).called(1);
  });
}