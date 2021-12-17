import 'package:flutter_test/flutter_test.dart';

import 'package:total_app/features/finance/data/usecases/get_all_financials_usecase_impl.dart';
import 'package:total_app/features/finance/data/datasources/get_all_financials_data_source.dart';

import 'package:mocktail/mocktail.dart';

class GetAllFinancialsDataSourceMock extends Mock
    implements GetAllFinancialsDataSource {}

void main() {
  test('Should call GetAllFinancialRepository to get a list of all financials',
      () async {
    //Arrange
    final getAllFinancialRepository = GetAllFinancialsDataSourceMock();
    final systemUnderTest = GetAllFinancialsUsecaseImpl(
        getAllFinancialsDatasource: getAllFinancialRepository);
    when(() => getAllFinancialRepository()).thenAnswer((_) async => []);

    //Act
    systemUnderTest();

    //Assert
    verify(() => getAllFinancialRepository()).called(1);
  });
}
