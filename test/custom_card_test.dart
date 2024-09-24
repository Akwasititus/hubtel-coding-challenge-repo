import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/widgets/custom_card.dart';

void main(){
  test("creating a custom card", (){
    final card = CustomnCard(
        status: 'successful',
        time: '14:45 PM',
        bankName: "Emmanuel Rockson",
        phone: "0545504545",
        bankLogo: "bankLogo",
        amount: 600
    );

    expect(card.status, 'successful');
    expect(card.time, '14:45 PM');
    expect(card.bankName, 'Emmanuel Rockson');
    expect(card.phone, '0545504545');
    expect(card.bankLogo, 'bankLogo');
    expect(card.amount, 600);
  });
}