class PaymentHistoryModel {
  final String amount;
  final String title;
  final bool isPositive;
  final String date;
  final double currentbalance;

  PaymentHistoryModel({
    required this.amount,
    required this.title,
    required this.isPositive,
    required this.date,
    required this.currentbalance,
  });
}
