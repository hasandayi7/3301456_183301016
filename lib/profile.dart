import 'package:flutter/material.dart';

class ProfilePage extends  StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }
  Widget buildCoverImage() => Container(
    color: Colors.white,
    child: Image.asset("images/profile_flare.jpg",
    width: double.infinity,
      height: 280,
      fit: BoxFit.cover,
    ),
  );
  Widget buildProfileImage() => CircleAvatar(
    radius: 70,
    backgroundImage: AssetImage("images/dashboard/profile.png"),
  );
  Widget buildTop () {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            margin: EdgeInsets.only(bottom:70 ),
            child: buildCoverImage()),
        Positioned(
          child: buildProfileImage(),
          top: 210, left: 140,
        ),
      ],
    );
  }
  Widget buildContent () {
    return Column(
      children: [
        Text("Hasan Dayı ",
        style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 20),
          child: Text("Kos Kademe Birim Teknikeri",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
        ),
    GridView.count(
    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 60),
    crossAxisSpacing: 10,
    mainAxisSpacing: 30,
    shrinkWrap: true,
    crossAxisCount: 3,
    children: [
      Container(
        width: 50, height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow:[ BoxShadow (
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0,3)
          ),],
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child:Column (
          children: [
            Container(
              child: Image.asset("images/profile/recycling-bin.png",
              height: 70,
              ),
            ),
            Text("Toplanan Atık",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.indigo,
                fontSize: 16
              ),
            ),
            SizedBox(height: 5,),
            Text("68",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                  fontSize: 15
              ),
            ),
          ],
        ),
        ),
      ),
      Container(
        width: 50, height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow:[ BoxShadow (
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0,3)
          ),],
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child:Column (
            children: [
              Container(
                child: Image.asset("images/profile/garbage-truck.png",
                  height: 70,
                ),
              ),
              Text("Kullanılan Araç",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo,
                    fontSize: 15
                ),
              ),
              SizedBox(height: 5,),
              Text("3",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                    fontSize: 15
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        width: 50, height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow:[ BoxShadow (
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0,3)
          ),],
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
          child:Column (
            children: [
              Container(
                child: Image.asset("images/profile/distance.png",
                  height: 70,
                ),
              ),
              Text("Toplam Mesafe",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.indigo,
                    fontSize: 14
                ),
              ),
              SizedBox(height: 5,),
              Text("157 Km.",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.red,
                    fontSize: 15
                ),
              ),
            ],
          ),
        ),
      ),
    ],
    ),
      ],
    );
  }
}
