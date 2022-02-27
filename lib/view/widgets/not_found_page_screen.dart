import 'package:flutter/material.dart';

class NotFoundPageScreen extends StatelessWidget {
  const NotFoundPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/images/warning.png'),
            width: 100,
          ),
          Text(
            'Not Found',
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      )),
    );
  }
}
