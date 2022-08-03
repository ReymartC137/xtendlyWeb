import 'package:flutter/material.dart';
import 'package:xtendlyweb/widget/customInput.dart';


class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final TextEditingController? nameController = TextEditingController();
  final TextEditingController? emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset("assets/images/ppc-floqast-banner.jpg", width: MediaQuery.of(context).size.width,),
                  ),


                  Positioned(
                    top: 150,

                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/3,

                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color.fromRGBO(255, 255, 255, 100),Color.fromRGBO(255, 255, 255, 150)]
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          children: [
                            SizedBox(width: 150,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [

                                    Image.asset("assets/images/Layer 53.png",width: MediaQuery.of(context).size.width/6,),
                                    SizedBox(width: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Text("The", style: TextStyle(fontFamily: "Roboto-italic",
                                          fontSize: MediaQuery.of(context).size.width*.025),),
                                    ),

                                  ],
                                ),
                                Text("Fastest, Most Accurate", style: TextStyle(color: Color.fromRGBO(139, 197, 64, 1), fontSize: MediaQuery.of(context).size.width*.025, fontFamily: "Roboto-BlackItalic"),),
                                Text("Way to Close Your Books!", style: TextStyle(color: Colors.black, fontSize: MediaQuery.of(context).size.width*.025, fontFamily: "Roboto-italic"),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    left: MediaQuery.of(context).size.width/5,
                    bottom: MediaQuery.of(context).size.height/9.8,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(139, 197, 64, 1),
                        borderRadius: BorderRadius.circular(5)
                      ),

                      height: MediaQuery.of(context).size.height/8,

                      child: Row(
                        children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: [
                                  Text("SCHEDULE A DEMO", style: TextStyle(color: Colors.white, fontSize: 20,fontFamily: "Roboto-Regular"),),
                                  Text("Learn More About FloQast",style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: "Roboto-thin"),),
                                ],
                              ),
                            ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5)),
                            ),

                            height: MediaQuery.of(context).size.height/8,
                            width: MediaQuery.of(context).size.width/2.5,

                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: const [
                                      SizedBox(width: 60,),
                                      Text(
                                          "Learn How FloQast Can",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Roboto-Regular"
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        "Improve Your Month End",
                                        style: TextStyle(
                                            color: Color.fromRGBO(139, 197, 64, 1),
                                          fontFamily: "Roboto-Regular"
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:  [
                                    CustomInput(inputTextField: nameController, hint: 'First Name*',),

                                    CustomInput(inputTextField: nameController, hint: 'Email*',),

                                    ElevatedButton(onPressed: (){ },
                                      style: ButtonStyle(

                                        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(139, 197, 64, 1)),
                                      ),
                                      child: Text("SCHEDULE NOW",
                                        style: TextStyle(color: Colors.white),),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
