import 'package:flutter/material.dart';

class CustomCardModel {
  final String bankLogo;
  final String bankName;
  final String? bankSubName;
  final String phone;
  final String status;
  final double amount;
  final String time;
  final String identity;
  final String identityAlias;
  final Color color;

  CustomCardModel( {
    this.bankSubName,
    required this.identityAlias,
    required this.status,
    required this.time,
    required this.color,
    required this.bankName,
    required this.phone,
    required this.identity,
    required this.bankLogo,
    required this.amount,
  });
}

List<CustomCardModel> getCard = [
  CustomCardModel(
      bankSubName: 'Kwasbena Uncle Ebo',
      status: 'successful',
      identityAlias: 'Cool your heart wai',
      bankName: 'Emmanuel Rockson',
      phone: '0545504545',
      bankLogo: "assets/MTN.jpeg",
      time: '14:45 PM',
      color: Colors.blueGrey,
      identity: 'personal',
      amount: 500),
  CustomCardModel(
      status: 'failed',
      bankName: 'Absa Bank',
      color: Colors.blueGrey,
      phone: '0545504545',
      identityAlias: 'Cool your heart wai',
      time: '14:45 PM',
      bankLogo: "assets/ABSA.jpeg",
      identity: 'personal',
      amount: 500),
  CustomCardModel(
      bankSubName: '',
      status: 'successful',
      color: Colors.blueGrey,
      bankName: 'Emmanuel Rockson',
      phone: '0545504545',
      identityAlias: 'Cool your heart wai',
      bankLogo: "assets/MTN.jpeg",
      time: '14:45 PM',
      identity: 'other',
      amount: 500),

  CustomCardModel(
      bankSubName: '',
      status: 'successful',
      color: Colors.white,
      bankName: 'Emmanuel Rockson',
      phone: '0545504545',
      identityAlias: '',
      bankLogo: "assets/MTN.jpeg",
      time: '14:45 PM',
      identity: 'other',
      amount: 500),
];
