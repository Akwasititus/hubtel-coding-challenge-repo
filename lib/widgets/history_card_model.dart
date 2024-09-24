class CustomCardModel {
  final String bankLogo;
  final String bankName;
  final String? bankSubName;
  final String phone;
  final String status;
  final double amount;
  final String time;

  CustomCardModel({
    this.bankSubName,
    required this.status,
    required this.time,
    required this.bankName,
    required this.phone,
    required this.bankLogo,
    required this.amount,
  });
}

List<CustomCardModel> getCard = [
  CustomCardModel(
      bankSubName: 'Kwasbena Uncle Ebo',
      status: 'successful',
      bankName: 'Emmanuel Rockson',
      phone: '0545504545',
      bankLogo: "assets/MTN.jpeg",
      time: '14:45 PM',
      amount: 500),
  CustomCardModel(
      status: 'failed',
      bankName: 'Absa Bank',
      phone: '0545504545',
      time: '14:45 PM',
      bankLogo: "assets/ABSA.jpeg",
      amount: 500)
];
