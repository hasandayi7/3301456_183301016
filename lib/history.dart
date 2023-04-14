import 'package:flutter/material.dart';

class HistoryPage extends  StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
         decoration: BoxDecoration(image: DecorationImage(
           image: AssetImage("images/bg_blue.jpg"),
               fit: BoxFit.cover
         )),
        child: ListView(
     children: [
        Container(
        decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/grad1.jpg"),
          fit: BoxFit.cover
    ),
    color: Colors.purple,
    borderRadius:
    BorderRadius.only(bottomRight: Radius.circular(0)
    ),
    ),
    child: Column(
    children: [
    const SizedBox(height:50),
    ListTile(
    contentPadding: EdgeInsets.symmetric(horizontal: 50),
    title: Text("Hasan DAYI", style: Theme.of(context).textTheme.headlineSmall?.copyWith(
    color: Colors.white,
    )),
    subtitle: Text("Katı Atık Alınma Geçmişi", style: Theme.of(context).textTheme.titleMedium?.copyWith(
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
       SizedBox(height: 20),
       Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           color: Colors.grey,
         ),
         height: 150,
         child: ListTile(
           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           title: Text("Çöp 1", style: Theme.of(context).textTheme.headlineMedium?.copyWith(
             color: Colors.white,
           )),
           subtitle: Text("Araç : 42 Kos 42 ", style: Theme.of(context).textTheme.titleLarge?.copyWith(
               color: Colors.white54
           )),
           trailing: CircleAvatar(
            radius: 30,
             backgroundImage: AssetImage("images/profile/garbage-truck.png"),
           ),
         ),
       ),
       SizedBox(height: 20),
       Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           color: Colors.black,
         ),
         height: 150,
         child: ListTile(
           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           title: Text("Çöp 1", style: Theme.of(context).textTheme.headlineMedium?.copyWith(
             color: Colors.white,
           )),
           subtitle: Text("Araç : 42 Kos 42 ", style: Theme.of(context).textTheme.titleLarge?.copyWith(
               color: Colors.white54
           )),
           trailing: CircleAvatar(
             radius: 30,
             backgroundImage: AssetImage("images/profile/garbage-truck.png"),
           ),
         ),
       ),
       SizedBox(height: 20),
       Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           color: Colors.grey,
         ),
         height: 150,
         child: ListTile(
           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           title: Text("Çöp 1", style: Theme.of(context).textTheme.headlineMedium?.copyWith(
             color: Colors.white,
           )),
           subtitle: Text("Araç : 42 Kos 42 ", style: Theme.of(context).textTheme.titleLarge?.copyWith(
               color: Colors.white54
           )),
           trailing: CircleAvatar(
             radius: 30,
             backgroundImage: AssetImage("images/profile/garbage-truck.png"),
           ),
         ),
       ),
       SizedBox(height: 20),
       Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           color: Colors.black,
         ),
         height: 150,
         child: ListTile(
           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           title: Text("Çöp 1", style: Theme.of(context).textTheme.headlineMedium?.copyWith(
             color: Colors.white,
           )),
           subtitle: Text("Araç : 42 Kos 42 ", style: Theme.of(context).textTheme.titleLarge?.copyWith(
               color: Colors.white54
           )),
           trailing: CircleAvatar(
             radius: 30,
             backgroundImage: AssetImage("images/profile/garbage-truck.png"),
           ),
         ),
       ),
       SizedBox(height: 20),
       Container(
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
           color: Colors.grey,
         ),
         height: 150,
         child: ListTile(
           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
           title: Text("Çöp 1", style: Theme.of(context).textTheme.headlineMedium?.copyWith(
             color: Colors.white,
           )),
           subtitle: Text("Araç : 42 Kos 42 ", style: Theme.of(context).textTheme.titleLarge?.copyWith(
               color: Colors.white54
           )),
           trailing: CircleAvatar(
             radius: 30,
             backgroundImage: AssetImage("images/profile/garbage-truck.png"),
           ),
         ),
       ),
     ],
    ),
      ),
    );
  }
}