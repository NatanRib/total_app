class FinancialEntity {
  final String description;
  final double value;
  final int assement;
  final double totalValue;
  final type;

  FinancialEntity(
      {required this.description,
      required this.value,
      required this.assement,
      required this.totalValue,
      required this.type});

  double getTotalValue() => value * assement;
}
