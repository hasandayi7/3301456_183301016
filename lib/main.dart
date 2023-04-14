import 'package:flutter/material.dart';

import 'package:kos_nfc_reader/onboarding.dart';

void main (){

  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.indigo,
    ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {

 @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),
        (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboarding()));
        }

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( decoration: BoxDecoration(
        image: DecorationImage(
          image:AssetImage("images/white.jpg"
          ),
          fit: BoxFit.cover,
        ),
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Container( height: 300, width: 300,
                    child: Image.asset("images/KOS_Logo.png"),
                )
            ),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
            backgroundColor: Colors.grey,
            strokeWidth: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("NFC READER",
              style: TextStyle(color: Colors.indigo , fontWeight:FontWeight.bold ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
