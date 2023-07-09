import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_flutter/qr_flutter.dart';
class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("राजन आई.टी.आई.",style: GoogleFonts.sora(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(233, 217, 208,1),
        leading: Image.asset(
          "assets/iti.png",
          scale: 1.7,
        ),
        actions: [
          OutlinedButton(onPressed: (){},style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.transparent, width: 5),
          ), child: Image.asset(
            "assets/Logo.png",
            scale: 1.7,
          ), )
        ],
        elevation: 2,
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(153, 148, 208, 1.0),
                Color.fromRGBO(233, 217, 208,1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(height: MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*1.0,
                  padding: const EdgeInsets.only(left: 1, right: 1),
                  child: Image.asset(
                    "assets/mgr.jpg",
                    scale: 2.9,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Center(child: Text("श्री मनोज कुमार पांडेय",style: TextStyle(color: Colors.white,fontSize: 18),),),
                ),
                const Center(child: Text("मैनेजर",style: TextStyle(color: Colors.white,fontSize: 18),),),

                const Center(child: Text("प्रवेश विवरण",style: TextStyle(color: Colors.white,fontSize: 18),),),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: const Center(child: Text("आई. टी. आई. प्रवेश फार्म भरते समय आवश्यक दस्तावेज |\n1- पासपोर्ट साइज फोटो ( चार प्रति 6 माह तक ) |\n2- हाईस्कूल मार्कसीट की फोटोकापी ( तीन प्रति ) |\n3- आधारकार्ड की फोटोकापी ( तीन प्रति ) |\n4- एक अपडेटेड चालू ईमेल आई डी. ( जरुरी ) |\n5- एक मोबाइल न. जो चल रहा हो (ओ. टी. पी. हेतु ) ।\n6- एक whatsapp मोबाइल न.जो चल रहा हो",style: TextStyle(color: Colors.white,fontSize: 18),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: const Center(child: Text("शुल्क- 1000 प्रति माह और परीक्षा शुल्क अतिरिक्त। छात्रवृत्ति उपलब्ध",style: TextStyle(color: Colors.white,fontSize: 18),),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: const Center(child: Text("एड्रेस: राजन आई.टी.आई., विलेज पोस्ट बासुपुर ग़ाज़ीपुर। उत्तर प्रदेश 233306",style: TextStyle(color: Colors.white,fontSize: 18),),),
                ),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (BuildContext bs)=>AlertDialog(
          content: Container(height: 500,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 300,width: 300,child: QrImage(
                data: 'upi://pay?mode=02&pa=Q167004470@ybl&purpose=00&mc=0000&pn=PhonePeMerchant&orgid=180001&sign=MEQCIFxcD7nPB3u2JOVxeGMdEp/8JfLb+Yj0t1Q1X+tjYI3uAiAhZtYlXn3rZ+PwKqizT2gA2/Myf7wBjWHkcW1/26cXOQ==',
                version: QrVersions.auto,
                size: 200.0,
              ),),
              Text("Scan to Pay Fee",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 18),)
            ],
            ),
          ),
        ));
      },backgroundColor: Colors.deepOrangeAccent,child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: const [
        Icon(Icons.qr_code,color: Colors.white,),
      ],),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
