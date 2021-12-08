import 'package:total_app/layers/finance/domain/enumerated/financial_type_enum.dart';

class FinancialEntity {
  final int id;
  final String description;
  final double value;
  final int assement;
  double? totalValue;
  final FinancialType type;

  FinancialEntity(
      {required this.id,
      required this.description,
      required this.value,
      required this.assement,
      required this.type}){
        totalValue = value * assement;
      }
}
