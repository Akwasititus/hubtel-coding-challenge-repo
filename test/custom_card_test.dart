import 'package:flutter_test/flutter_test.dart';
import 'package:hubtel_coding_challenge/widgets/history_card_model.dart';
import 'package:flutter/material.dart';

void main(){
  test("creating a custom card", (){
    final card = CustomCardModel(
        status: 'successful',
        time: '14:45 PM',
        bankName: "Emmanuel Rockson",
        phone: "0545504545",
        bankLogo: "bankLogo",
        amount: 600,
        identityAlias: 'cool your heard wai',
        color: Colors.white,
        identity: 'person'
    );

    expect(card.status, 'successful');
    expect(card.time, '14:45 PM');
    expect(card.bankName, 'Emmanuel Rockson');
    expect(card.phone, '0545504545');
    expect(card.bankLogo, 'bankLogo');
    expect(card.identityAlias, 'cool your heard wai');
    expect(card.color, Colors.white);
    expect(card.identity, 'person');
    expect(card.amount, 600);
  });
}