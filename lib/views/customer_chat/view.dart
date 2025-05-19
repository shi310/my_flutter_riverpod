import 'package:flutter/material.dart';

class CustomerChatView extends StatelessWidget {
  const CustomerChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customer Chat View')),
      body: Container(color: Colors.blue,),
    );
  }
}
