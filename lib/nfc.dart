import 'package:flutter/material.dart';

class NfcPage extends  StatefulWidget {
  const NfcPage({Key? key}) : super(key: key);

  @override
  State<NfcPage> createState() => _NfcPageState();
}

class _NfcPageState extends State<NfcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/underB.jpg")
          ],
        ),
      ),
    );
  }
}
