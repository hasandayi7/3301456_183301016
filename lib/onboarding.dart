import 'package:flutter/material.dart';
import 'package:kos_nfc_reader/loginScreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  bool isLastpage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) => Scaffold(
    body: PageView(
      controller: controller,
    onPageChanged: (index){
        setState(() => isLastpage = index ==2);
    },
    children: [
      Padding(
        padding:  EdgeInsets.only(bottom: 80),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/onboarding/grad2.jpg"),
            ),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Image.asset("images/onboarding/recycling-truck.png",width: 300, height: 300),
              Padding(
                padding:  EdgeInsets.only(top: 18 ,left: 10,right: 10),
                child: Text("Konya Organize Sanayi Bölgesi Atık Toplama Uygulamasına Hoşgeldiniz",
                  style: TextStyle(color: Colors.black87, fontSize: 20,fontWeight: FontWeight.w800),textAlign: TextAlign.center,),
              ),
            ]
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 80),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/onboarding/grad3.jpg"),
            ),
          ),
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[Image.asset("images/onboarding/nfc.png",width: 200, height: 200),
                Padding(
                  padding:  EdgeInsets.only(top: 18 ,left: 10,right: 10),
                  child: Text("Akıllı Atıklar",
                    style: TextStyle(color: Colors.black87, fontSize: 20,fontWeight: FontWeight.w800),textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18 ,left: 10,right: 10),
                  child: Text("Atıklar Toplanır ve Konteynerın Kartı Mobil Cihaza Okutulur",
                    style: TextStyle(color: Colors.black87, fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                ),
              ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(bottom: 80),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("images/onboarding/bg_grad.jpg"),
            ),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[Image.asset("images/onboarding/destination.png",width: 200, height: 200),
              Padding(
                padding:  EdgeInsets.only(top: 18 ,left: 10,right: 10),
                child: Text("Sorunsuz Takip",
                  style: TextStyle(color: Colors.black87, fontSize: 20,fontWeight: FontWeight.w800),textAlign: TextAlign.center,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30 ,left: 10,right: 10),
                child: Text("Nerde Olursanız Olun Atıklarınızdan Kurtulduğunuzdan Emin Olun ",
                  style: TextStyle(color: Colors.black87, fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      ),
    ],
    ),
    bottomSheet: isLastpage ?
        TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)
            ),
            foregroundColor: Colors.white,
            backgroundColor: Colors.black87,
            minimumSize: Size.fromHeight(80)
          ),
          child: Text("Başlayın",style:TextStyle(fontSize: 20),),
          onPressed: (){
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          } ,

        )
        : Container(
      padding:  EdgeInsets.symmetric(horizontal: 1),
      height: 80,
      color: Colors.black87,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: Text("Geç", style: TextStyle(
                color: Colors.deepPurpleAccent ,fontWeight: FontWeight.bold),
            ),
            onPressed: () => controller.jumpToPage(2),
          ),
          Center(
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ExpandingDotsEffect(
                spacing: 16,
                dotColor: Colors.grey,
                activeDotColor: Colors.redAccent,
              ),
              onDotClicked: (index)=>controller.animateToPage(
                index,
                duration:  Duration(milliseconds: 500),
                curve: Curves.easeIn,
              ),
            ),
          ),
          TextButton(

            child: Text("Sonraki Sayfa", style: TextStyle(
                color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),
            ),
            onPressed: () =>controller.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.linear),
          ),
        ],
      ),
    ),
  );
}
