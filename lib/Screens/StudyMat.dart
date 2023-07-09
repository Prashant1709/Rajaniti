import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class Studymat extends StatefulWidget {
  const Studymat({Key? key}) : super(key: key);

  @override
  State<Studymat> createState() => _StudymatState();
}

class _StudymatState extends State<Studymat> {
  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch $url');
    }
  }
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        SizedBox(height: MediaQuery.of(context).size.height*0.7,
        width: MediaQuery.of(context).size.width*0.90,
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
            crossAxisCount: 2,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: ()async {
              _launchInWebViewOrVC(Uri.parse("https://www.youtube.com/watch?v=pSNL9-LC8AE&list=PLFLY28_I6o3jgseUg36taePxkQnZ0nK7L"));
            },color: Colors.deepOrangeAccent,child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [Icon(Icons.fax,color: Colors.white,size: 28,),
                Text("फिटर ट्रेड प्लेलिस्ट",style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: (){
              _launchInWebViewOrVC(Uri.parse("https://www.youtube.com/watch?v=-inHROGbbWw&list=PLFLY28_I6o3gEQJ3-M8qH67ohlBzb9eE0&index=5"));
            },color: Colors.deepOrangeAccent,child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                Icon(Icons.electric_bolt,color: Colors.white,size: 28,),
                Text("इलेक्ट्रीशियन ट्रेड प्लेलिस्ट",style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: (){
              _launchInWebViewOrVC(Uri.parse("https://www.youtube.com/watch?v=aDI8-XcDpmg"));
            },color: Colors.deepOrangeAccent,child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                Icon(Icons.computer,color: Colors.white,size: 28,),
                Text("कंप्यूटर प्लेलिस्ट",style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
              ],
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialButton(onPressed: (){
              _launchInWebViewOrVC(Uri.parse("https://www.youtube.com/watch?v=31TFFk-1fW4&list=PLNdRsMqHda5-WZF14FduoAZ4sFabxPHDv"));
            },color: Colors.deepOrangeAccent,child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const[
                Icon(Icons.book,color: Colors.white,size: 28,),
                Text("सामान्य ज्ञान प्लेलिस्ट",style: TextStyle(color: Colors.white,fontSize: 18),textAlign: TextAlign.center,),
              ],
            ),),
          ),
        ],
        )),
            ]),
      ),
    );
  }
}
