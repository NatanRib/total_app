import 'package:total_app/features/finance/data/datasources/get_all_financials_data_source.dart';
import 'package:total_app/features/finance/domain/entities/financial_entity.dart';
import 'package:total_app/features/finance/domain/enumerated/financial_type_enum.dart';

class GetAllFinancialsDataSourceMem implements GetAllFinancialsDataSource {
  @override
  Future<List<FinancialEntity>> call() async {
    late List<FinancialEntity> fiancials;
    await Future.delayed(Duration(seconds: 3), () {
      fiancials = [
        FinancialEntity(
            id: 1,
            description: 'Compra de DVR 8 cal IntelArg',
            value: 2300.05,
            installments: 2,
            type: FinancialType.passive,
            paid: false),
        FinancialEntity(
            id: 1,
            description: 'Venda de controle JSB para Joao',
            value: 40.55,
            installments: 1,
            type: FinancialType.active,
            paid: false),
        FinancialEntity(
            id: 1,
            description: 'Campra de controle JSB',
            value: 30.0,
            installments: 1,
            type: FinancialType.passive,
            paid: false),
        FinancialEntity(
            id: 1,
            description: 'Instalação de CFTV no Pedro',
            value: 2400.65,
            installments: 3,
            type: FinancialType.active,
            paid: false),
        FinancialEntity(
            id: 1,
            description: 'Campra de 8 cameras HD',
            value: 1800.05,
            installments: 3,
            type: FinancialType.passive,
            paid: true),
        FinancialEntity(
            id: 1,
            description: 'Compra de DVR 8 cal DFG',
            value: 2145.85,
            installments: 2,
            type: FinancialType.passive,
            paid: false),
        FinancialEntity(
            id: 1,
            description: 'Venda de 2 controles IntelArg para Maria',
            value: 90.55,
            installments: 1,
            type: FinancialType.active,
            paid: true),
        FinancialEntity(
            id: 1,
            description: 'Campra de 2 controle IntelArg',
            value: 65.50,
            installments: 1,
            type: FinancialType.passive,
            paid: true),
        FinancialEntity(
            id: 1,
            description: 'Instalação de CFTV no Mario Broder',
            value: 1900.65,
            installments: 2,
            type: FinancialType.active,
            paid: true),
        FinancialEntity(
            id: 1,
            description: 'Campra de 4 cameras HD',
            value: 900.05,
            installments: 2,
            type: FinancialType.passive,
            paid: true),
        FinancialEntity(
            id: 1,
            description: 'Compra de DVR 4 cal IntelArg',
            value: 1800.05,
            installments: 3,
            type: FinancialType.passive,
            paid: true),
        FinancialEntity(
            id: 1,
            description: 'Venda de controle JSB para Marcos',
            value: 40.55,
            installments: 1,
            type: FinancialType.active,
            paid: true),
        FinancialEntity(
            id: 1,
            description: 'Campra de controle JSB',
            value: 30.0,
            installments: 1,
            type: FinancialType.passive,
            paid: false),
        FinancialEntity(
            id: 1,
            description: 'Instalação de CFTV na Julia',
            value: 2600.65,
            installments: 2,
            type: FinancialType.active,
            paid: true),
        FinancialEntity(
            id: 1,
            description: 'Campra de 8 cameras HD',
            value: 1800.05,
            installments: 2,
            type: FinancialType.passive,
            paid: true),
      ];
    });
    return fiancials;
  }
}
