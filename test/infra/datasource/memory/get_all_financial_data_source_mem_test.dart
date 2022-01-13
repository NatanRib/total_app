import 'package:flutter_test/flutter_test.dart';
import 'package:total_app/modules/finance/data/datasources/get_all_financials_data_source.dart';
import 'package:total_app/modules/finance/domain/entities/financial_entity.dart';
import 'package:total_app/modules/finance/infra/datasources/memory/get_all_financials_data_source_mem.dart';

main(){
  test('should return a list of all financials', () async {
    //Arrange
    GetAllFinancialsDataSource systemUnderTest = GetAllFinancialsDataSourceMem();
    
    //Act
    final result = await systemUnderTest();
    
    //Assert
    expect(result, isA<List<FinancialEntity>>());
  });
}