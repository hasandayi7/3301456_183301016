import 'dart:async';

import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends  StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

   late BitmapDescriptor konumIcon;
  Completer<GoogleMapController> haritaKontrol = Completer();


  
  var baslangic = CameraPosition(target:LatLng(37.973744,32.609979),zoom: 5);

  List<Marker> copler = <Marker>[];

  iconOlustur(context){
    ImageConfiguration configuration = createLocalImageConfiguration(context);
    BitmapDescriptor.fromAssetImage(configuration, "images/icons/rcymap1.png").then((icon) {
      konumIcon = icon;
    });
  }
  Future<void> konumaGit() async{
    GoogleMapController controller = await haritaKontrol.future;


    var cop3mark = Marker(
        markerId: MarkerId("Id"),
        position: LatLng(37.969734, 32.603749),
        infoWindow: InfoWindow(title: "Çöp 2",snippet: "Aydoğanlar Önü"),
        icon: konumIcon,
    );
    setState(() {
      copler.add(cop3mark);
    });

    var cop2 = CameraPosition(target:LatLng(37.969734, 32.603749),zoom: 12);
    controller.animateCamera(CameraUpdate.newCameraPosition(cop2));
    
  }
  @override
  Widget build(BuildContext context) {
    iconOlustur(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox( width: 400, height: 500,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: baslangic ,
                markers: Set<Marker>.of(copler),
                onMapCreated: (GoogleMapController controller){
                  haritaKontrol.complete(controller);
                },
              ),
            ),
            ElevatedButton(onPressed:(){
              konumaGit();
            }, child: Text("Çöp 1"))
          ],
        ),
      ),
    );
  }
}