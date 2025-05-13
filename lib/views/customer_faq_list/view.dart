import 'package:flutter/material.dart';

class CustomerListView extends StatelessWidget {
  const CustomerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customer List View')),
      body: Container(color: Colors.blue,),
    );
  }
}
