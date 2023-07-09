import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:rajaniti/Screens/About%20us.dart';
import 'package:rajaniti/Screens/StudyMat.dart';
import 'package:rajaniti/Screens/admindept.dart';
import 'package:url_launcher/url_launcher.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Image image1=Image.asset("assets/1.jpg");
  void initState() {
    super.initState();
    image1 = Image.asset("assets/1.jpg");
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(image1.image, context);
  }
  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    )) {
      throw Exception('Could not launch $url');
    }
  }
  String name="";
  String number="";
  // Future<void> send() async {
  //   Email email = Email(
  //     body: 'I Need More Information on Admission. Name: $name\nNumber: $number',
  //     subject: "Admission Enquiry",
  //     recipients: ["ms.saumya2000@rediffmail.com"],
  //     isHTML: false,
  //   );
  //
  //   String platformResponse;
  //
  //   try {
  //     await FlutterEmailSender.send(email);
  //     platformResponse = 'success';
  //   } catch (error) {
  //     print(error);
  //     platformResponse = error.toString();
  //   }
  //
  //   if (!mounted) return;
  //
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(
  //       content: Text(platformResponse),
  //     ),
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("राजन आई.टी.आई.",style: GoogleFonts.sora(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold),),
      centerTitle: true,
        backgroundColor: const Color.fromRGBO(233, 217, 208,1),
        leading: Image.asset(
          "assets/iti.png",
          scale: 1.7,
        ),
        actions: [
          OutlinedButton(onPressed: (){
            _launchInWebViewOrVC(Uri.parse("https://www.ncvtmis.gov.in/pages/home.aspx"));
          },style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.transparent, width: 5),
          ), child: Image.asset(
            "assets/Logo.png",
            scale: 1.7,
          ), )
        ],
        elevation: 2,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.deepOrangeAccent,child: const Icon(Icons.person_pin_outlined,color: Colors.white,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
    child:SingleChildScrollView(
      child: Row(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(height: MediaQuery.of(context).size.height*0.3,
                width: MediaQuery.of(context).size.width*1.00,
                padding: const EdgeInsets.only(left: 1, right: 1),
                child: image1
              ),
              SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
              AnimatedTextKit(animatedTexts: [
                TyperAnimatedText("कौशलं बलम्",textStyle: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300)),
                TyperAnimatedText("क्षेत्र की नंबर 1 प्राइवेट आईटीआई",textStyle: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300)),
                TyperAnimatedText("सीमित सीटें उपलब्ध हैं",textStyle: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300)),
                TyperAnimatedText("अपना भविष्य बदलने के लिए हमसे जुड़ें",textStyle: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300)),
              ],
              repeatForever: true,),
              const SizedBox(height: 10,),
              SizedBox(height: MediaQuery.of(context).size.height*0.7,
                width: MediaQuery.of(context).size.width*0.90,
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  // Generate 100 widgets that display their index in the List.
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext bs)=>Studymat()));
                      },color: Colors.deepOrangeAccent,child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children:const [
                          Icon(Icons.book,color: Colors.white,size: 38,),
                          Text("अध्ययन सामग्री",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                        ],
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext bs)=>About()));
                      },color: Colors.deepOrangeAccent,child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(Icons.account_balance,color: Colors.white,size: 38,),
                          Text("हमारे बारे में",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                        ],
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(onPressed: (){
                        showModalBottomSheet(context: context, builder: (BuildContext bs)=>Container(
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  IconButton(onPressed:() async {
                                    FlutterPhoneDirectCaller.callNumber("9415680291");
                                  }, icon: Icon(Icons.call),iconSize: 18,
                                  ),
                                  Text("Manager",style: GoogleFonts.sulphurPoint(),)
                                ],
                              ),
                              Column(
                                children: [
                                  IconButton(onPressed:() async {
                                    FlutterPhoneDirectCaller.callNumber("9795990291");
                                  }, icon: Icon(Icons.call),iconSize: 18,
                                  ),
                                  Text("Office",style: GoogleFonts.sulphurPoint(),)
                                ],
                              ),
                              // Column(
                              //   children: [
                              //     IconButton(onPressed: ()async{
                              //       showDialog(context: context, builder: (BuildContext bc)=>AlertDialog(
                              //         title: Text("Enter Data",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 18),),
                              //         backgroundColor: Colors.white,
                              //         content:Container(
                              //           height: MediaQuery.of(context).size.height*0.2,
                              //           width: MediaQuery.of(context).size.width*0.10,
                              //           child: Column(
                              //             mainAxisAlignment: MainAxisAlignment.center,
                              //             children: [
                              //               TextFormField(decoration: InputDecoration(
                              //                 filled:true,
                              //                 border: OutlineInputBorder(),
                              //                 hintText: "Name",
                              //               ),
                              //                 onChanged: (value){
                              //                 name=value;
                              //                 },
                              //               ),
                              //               SizedBox(height: 10,),
                              //               TextFormField(decoration: InputDecoration(
                              //                 filled:true,
                              //                 border: OutlineInputBorder(),
                              //                 hintText: "Number",
                              //               ),
                              //               onChanged: (value){
                              //                 number=value;
                              //               },
                              //               ),
                              //             ],
                              //           ),
                              //         ),
                              //         actions: [TextButton(onPressed: () async {send();
                              //           Navigator.pop(context);
                              //           }, child: Text("Save and Send",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 18),)),
                              //         TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Cancel",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 18),))
                              //         ],
                              //       ),
                              //         barrierDismissible: false
                              //       );
                              //
                              //     }, icon: Icon(Icons.email),iconSize: 18,),
                              //     Text("Email",style: GoogleFonts.sulphurPoint(),)
                              //   ],
                              // )
                            ],
                          ),
                        ));
                      },color: Colors.deepOrangeAccent,child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(Icons.quick_contacts_dialer_rounded,color: Colors.white,size: 38,),
                          Text("संपर्क करें",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                        ],
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext bs)=>Admin()));
                      },color: Colors.deepOrangeAccent,child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: const[
                          Icon(Icons.admin_panel_settings,color: Colors.white,size: 38,),
                          Text("प्रवेश कार्यालय",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),),
                        ],
                      ),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),)
    ));
  }
}
