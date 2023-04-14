import 'package:flutter/material.dart';
import 'package:kos_nfc_reader/dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _showdialog () {
    showDialog(context: context, builder:(context){
      return AlertDialog(
        title: Text("Üzgünüz"),
        content: Text("Lütfen Birim Yöneticiniz İle Görüşüp Parolayı Sıfırlayın"),
        actions: [
          MaterialButton(onPressed: (){
            Navigator.pop(context);
          },
            child: Text("Onayla"),
          ),
        ],
      );
    }
    );
  }
  bool hide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top:400),
              width: double.infinity,
             height: 450,
              decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              margin: EdgeInsets.only(top: 200,left: 50,right: 50),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow:[ BoxShadow(
                  color: Colors.black38,
                  spreadRadius: 0.1,
                  blurRadius: 5
                )],
              ) ,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-Mail",
                      prefixIcon: Icon(Icons.email_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    obscureText: hide,
                    decoration: InputDecoration(
                      hintText: "Parola",
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            hide = !hide;
                          });
                        },
                        icon: hide ? Icon(Icons.visibility_off):Icon(Icons.visibility)
                      ),
                      prefixIcon: Icon(Icons.lock_person_sharp),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(child: Text("Parolanızı mı Unuttunuz ?"), onPressed: (){
                      _showdialog();
                    },),
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      padding: EdgeInsets.symmetric(horizontal: 100)
                    ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DashBoard()));
                      },
                      child: Text("Giriş Yap")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Hesabınız Yok mu "),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                      }, child: Text("Hesap Oluştur ?"))
                    ],
                  )

                ],
              ),
            ),
            Positioned(
                top: 30, left: 85,
                child: Column(children: [
            Container(
                child: Image.asset("images/locksmith.png"),
            height: 100, width: 100,
            ),
                  Text("Hoşgeldiniz",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),),
                  Text("Kos Kullanıcınız İle Giriş Yapmalısınız",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400,fontSize: 15),)
            ],))
          ],
        ),
      ),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {
  bool hide = true;
  TextEditingController parola = TextEditingController();
  TextEditingController oparola = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top:400),
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              margin: EdgeInsets.only(top: 200,left: 50,right: 50),
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(13),
                boxShadow:[ BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 0.1,
                    blurRadius: 5
                )],
              ) ,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-Mail",
                      prefixIcon: Icon(Icons.email_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: parola ,
                    obscureText: hide,
                    decoration: InputDecoration(
                      hintText: "Parola",
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              hide = !hide;
                            });
                          },
                          icon: hide ? Icon(Icons.visibility_off):Icon(Icons.visibility)
                      ),
                      prefixIcon: Icon(Icons.lock_person_sharp),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  TextField(
                    controller: oparola,
                    obscureText: hide,
                    decoration: InputDecoration(
                      hintText: "Parolayı Onaylayın ",
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              hide = !hide;
                            });
                          },
                          icon: hide ? Icon(Icons.visibility_off):Icon(Icons.visibility)
                      ),
                      prefixIcon: Icon(Icons.lock_person_sharp),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          padding: EdgeInsets.symmetric(horizontal: 100)
                      ),
                      onPressed: (){
                        if(parola.text != oparola.text){
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              title: Text("Dikkat"),
                              content: Text("Girdiğiniz Parolalar Uyuşmuyor"),
                            );
                          });
                        }else {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                        }
                      },
                      child: Text(" Gönder")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Zaten Hesabınız Var Mı ?  "),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      }, child: Text("Giriş Yap"))
                    ],
                  )

                ],
              ),
            ),
            Positioned(
                top: 30, left: 85,
                child: Column(children: [
                  Container(
                    child: Image.asset("images/locksmith.png"),
                    height: 100, width: 100,
                  ),
                  Text("Hoşgeldiniz",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30),),
                  Text("Kos Kullanıcınız İle Giriş Yapmalısınız",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400,fontSize: 15),)
                ],))
          ],
        ),
      ),
    );
  }
}
