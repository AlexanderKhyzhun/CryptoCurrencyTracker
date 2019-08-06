import 'package:flutter/material.dart';

import 'package:cctracker/ui/main/CryptoCurrency.dart';

class CryptoList extends StatelessWidget {

  List<CryptoCurrency> data = [
    CryptoCurrency(name: "Bitcoin", symbol: "BTC", rank: 1, price: 6000.0),
    CryptoCurrency(name: "Etherium", symbol: "ETH", rank: 2, price: 4524.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Currency Tracker'),
      ),
      body: Container(
        child: ListView(
          children: _buildList(),
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    return data.map((CryptoCurrency f) => ListTile(
      title: Text(f.name),
      subtitle: Text(f.symbol),
      leading: CircleAvatar(
        child: Text(f.rank.toString()),
      ),
      trailing: Text('\$${f.price.toString()}'),
    )).toList();
  }

}