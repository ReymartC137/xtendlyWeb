

import 'package:flutter/material.dart';
import 'package:xtendlyweb/widget/customInput.dart';


class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final TextEditingController? nameController = TextEditingController();
  final TextEditingController? emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset("assets/images/ppc-floqast-banner.jpg", width: MediaQuery.of(context).size.width,),
                  ),


                  Positioned(
                    top: MediaQuery.of(context).size.width/6,

                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.width/5,

                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color.fromRGBO(255, 255, 255, 100),Color.fromRGBO(255, 255, 255, 150)]
                          )
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            SizedBox(width: MediaQuery.of(context).size.width/6,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [

                                    Image.asset("assets/images/Layer 53.png",width: MediaQuery.of(context).size.width/6,),
                                    SizedBox(width: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30.0),
                                      child: Text("The", style: TextStyle(fontFamily: "Roboto-BlackItalic", fontSize: MediaQuery.of(context).size.width*.025),),
                                    ),

                                  ],
                                ),
                                Text("Fastest, Most Accurate", style: TextStyle(color: Color.fromRGBO(139, 197, 64, 1), fontSize: MediaQuery.of(context).size.width*.020, fontFamily: "Roboto-BlackItalic"),),
                                Text("Way to Close Your Books!", style: TextStyle(color: Colors.black, fontSize: MediaQuery.of(context).size.width*.020, fontFamily: "Roboto-BlackItalic"),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              ),

              Container(

                child: Column(

                  children: [
                    Center(
                      child: Container(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Text("SCHEDULE A DEMO", style: TextStyle(color: Colors.white, fontSize: 20),),
                              Text("Learn More About FloQast",style: TextStyle(color: Colors.white, fontSize: 15),),
                            ],
                          ),
                        ),
                        height: 80,
                        decoration:  BoxDecoration(
                            color: Color.fromRGBO(139, 197, 64, 1),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Row(

                children: [

                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),



                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: const [
                                  Text(
                                      "Learn How FloQast Can"
                                  ),
                                  SizedBox(width: 5,),
                                  Text(
                                    "Improve Your Month End",
                                    style: TextStyle(
                                        color: Color.fromRGBO(139, 197, 64, 1)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                CustomInput(inputTextField: nameController, hint: 'First Name*',),
                                SizedBox(width: 5,),
                                CustomInput(inputTextField: nameController, hint: 'Email*',),
                                SizedBox(width: 5,),
                                ElevatedButton(

                                  onPressed: (){ },
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
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
