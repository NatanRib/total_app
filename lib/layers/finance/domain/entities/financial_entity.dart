import 'package:total_app/layers/finance/domain/enumerated/financial_type_enum.dart';

class FinancialEntity {
  final int id;
  final String description;
  final double value;
  final int installments;
  double? totalValue;
  final FinancialType type;
  final bool paid;

  FinancialEntity(
      {required this.id,
      required this.description,
      required this.value,
      required this.installments,
      required this.type,
      required this.paid}){
        totalValue = value * installments;
      }
}
