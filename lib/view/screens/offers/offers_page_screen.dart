import 'package:flutter/material.dart';

class OffersPageScreen extends StatelessWidget {
  const OffersPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offers'),
      ),
      body: Center(child: Text('Offers')),
    );
  }
}
