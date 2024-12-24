import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Odrers')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/orders'),
            child: Text('Orders'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/services'),
            child: Text('Services'),
          ),
        ],
      ),
    );
  }
}
