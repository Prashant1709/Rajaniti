import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  late Image image1,image2,image3,image4,image5,image6,image7,image8;
  @override
  void initState() {
    super.initState();
    image1 = Image.asset("assets/1.jpg");
    image2 = Image.asset("assets/2.jpg");
    image3 = Image.asset("assets/3.jpg");
    image4 = Image.asset("assets/4.jpg");
    image5 = Image.asset("assets/5.jpg");
    image6 = Image.asset("assets/6.jpg");
    image7 = Image.asset("assets/7.jpg");
    image8 = Image.asset("assets/8.jpg");
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    precacheImage(image3.image, context);
    precacheImage(image4.image, context);
    precacheImage(image5.image, context);
    precacheImage(image6.image, context);
    precacheImage(image7.image, context);
    precacheImage(image8.image, context);
  }

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
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
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,

              ),
          items: [image8,image2,image3,image4,image5,image6,image7,image1]
              .map((item) => Container(
            child: Center(
                child:
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: item
                )),
          ))
              .toList(),
              ),
                SizedBox(height: 10,),
                Container(height: MediaQuery.of(context).size.height*0.7,
                    width: MediaQuery.of(context).size.width*0.90,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Text("राजन प्राइवेट आईटीआई, कोड 1934, क्षेत्र में सर्वोत्कृष्ट इलेक्ट्रीशियन, फिटर और कंप्यूटर प्रशिक्षण प्रदान करने वाले एक औद्योगिक प्रशिक्षण संस्थान है। यहाँ प्रदान किए जाने वाले प्रशिक्षण कार्यक्रमों के माध्यम से छात्रों को प्रौद्योगिकी की दुनिया में विशेषज्ञता प्राप्त करने का अवसर मिलता है। हमारी संस्था विशेषता, व्यावसायिक अनुभव और उत्कृष्ट शिक्षण संसाधनों के साथ सुसज्जित है। हमारे अनुभवी शिक्षक द्वारा प्रदान की जाने वाली व्यावसायिक प्रशिक्षण पाठ्यक्रम छात्रों को ताकतवर और सुरक्षित इलेक्ट्रीशियन, कुशल फिटर और तकनीकी महारत के क्षेत्र में मान्यता प्राप्त करती है। हमारा उद्देश्य छात्रों को उच्च गुणवत्ता के प्रशिक्षण के माध्यम से उच्च नौकरी और रोजगार के अवसर प्रदान करना है। राजन प्राइवेट आईटीआई छात्रों के सामर्थ्य और प्रगति को बढ़ाने के लिए प्रतिबद्ध है।",
                      style: GoogleFonts.sora(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w300),)
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(onPressed: (){
                        _launchInWebViewOrVC(Uri.parse("https://drive.google.com/file/d/1dGjMeoUKlHcegxAGCzvJjKvJOpLc3J_8/view?usp=sharing"));
                      },color: Colors.deepOrangeAccent,child: Text("वीडियो गैलरी",style: TextStyle(color: Colors.white,fontSize: 18),),),
                    ),Padding(
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
                            ],
                          ),
                        ));
                      },color: Colors.deepOrangeAccent,child: Text("प्रवेश प्रारंभ",style: TextStyle(color: Colors.white,fontSize: 18),),),
                    ),
                  ],
                ),
                SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
              ]),
        ),
      ),
    );
  }
}
