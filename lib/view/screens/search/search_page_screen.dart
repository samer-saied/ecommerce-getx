import 'package:flutter/material.dart';

class searchPageScreen extends StatelessWidget {
  const searchPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search'),
      ),
      body: Center(child: Text('search')),
    );
  }
}
