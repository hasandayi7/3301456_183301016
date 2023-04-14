import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kos_nfc_reader/history.dart';
import 'package:kos_nfc_reader/map.dart';
import 'package:kos_nfc_reader/nfc.dart';
import 'package:kos_nfc_reader/profile.dart';

class DashBoardSet extends StatefulWidget  {
  const DashBoardSet({Key? key}) : super(key: key);

  @override
  State<DashBoardSet> createState() => _DashBoardSetState();
}

class _DashBoardSetState extends State<DashBoardSet> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:  DashBoard(),
    );
  }
}


class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/profile_flare.jpg"),
                fit: BoxFit.cover
              ),
              color: Colors.purple,
              borderRadius:
              BorderRadius.only(bottomRight: Radius.circular(100)
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height:50),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 30),
                  title: Text("Merhaba Hasan", style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white
                  )),
                  subtitle: Text("Günaydın", style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white54
                  )),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("images/dashboard/profile.png"),
                  ),
                ),
                const SizedBox(height:50),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration( image: DecorationImage(
                image: AssetImage("images/profile_flare.jpg"),
                fit: BoxFit.fill
            ),),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30) ,
              decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(150)
                ),
              ),
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 60),
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
                shrinkWrap: true,
                  crossAxisCount: 2,
                children: [
                  ElevatedButton.icon(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NfcPage()));
                  },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    icon: Icon(CupertinoIcons.antenna_radiowaves_left_right),
                    label: Text("Oku",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ),
                  ElevatedButton.icon(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MapPage()));
                  },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    icon: Icon(CupertinoIcons.map_pin_ellipse),
                    label: Text("Harita",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ),
                  ElevatedButton.icon(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                  },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                    icon: Icon(CupertinoIcons.profile_circled),
                    label: Text("Profil",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ),
                  ElevatedButton.icon(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HistoryPage()));
                  },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
                    icon: Icon(CupertinoIcons.timer_fill),
                    label: Text("Geçmiş",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}

