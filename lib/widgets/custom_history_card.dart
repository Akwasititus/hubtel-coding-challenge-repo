import 'package:flutter/material.dart';


import 'history_card_model.dart';

class CustomHistoryCard extends StatelessWidget {
  const CustomHistoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: getCard.length,
            itemBuilder: (context, index) {
              final cardInfo = getCard[index];
              return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                // height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(cardInfo.time),
                        Expanded(child: Container()),
                        const Text(""),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(45),
                              child: Image(
                                image: AssetImage(cardInfo.bankLogo),
                                height: 50,
                              ),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cardInfo.bankName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 15),
                                ),
                                Text(cardInfo.bankSubName ?? '',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15)),
                                Text(cardInfo.phone,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15,
                                        color: Colors.grey))
                              ],
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              height: 50,
                              decoration: BoxDecoration(
                                  color: cardInfo.status == "successful"
                                      ? Colors.green.withOpacity(0.5)
                                      : Colors.red.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  Icon(
                                    cardInfo.status == "successful"
                                        ? Icons.check_circle
                                        : Icons.cancel,
                                    color: cardInfo.status == "successful"
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                  Text(
                                    cardInfo.status,
                                    style: TextStyle(
                                      color: cardInfo.status == "successful"
                                          ? Colors.green
                                          : Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "GHC ${cardInfo.amount}",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                            )
                          ],
                        )
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade100,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(Icons.person),
                        ),
                        const SizedBox(width: 10),
                         Text(cardInfo.identity),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          // child: Icon(Icons.person),
                          height: 7,
                          width: 7,
                          decoration: BoxDecoration(
                              color: cardInfo.color,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                         Text(cardInfo.identityAlias),
                        Expanded(child: Container()),
                         Icon(
                          Icons.star,
                          color: cardInfo.status == "successful"
                              ? Colors.yellow
                              : Colors.white,
                        )
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}
