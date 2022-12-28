import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text('BLC1'),
          backgroundColor: Colors.blueAccent.shade700,
        ),
        body: const AnsPage(),
      ),
    ),
  );
}

class AnsPage extends StatefulWidget {
  const AnsPage({Key? key}) : super(key: key);

  @override
  State<AnsPage> createState() => _AnsPageState();
}

class _AnsPageState extends State<AnsPage> {
  @override
  int ballnum = 1;
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: (){
          setState(() {
            ballnum = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballnum.png'),
      ),
    );
  }
}
