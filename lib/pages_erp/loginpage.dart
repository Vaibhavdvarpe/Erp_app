import 'package:erp_app/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
        home:Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(child: Image.asset("assets/images/erp_login.png")),
                     ClipRRect(borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40)),
                       child: Container(
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 30,left: 27),
                              child: Text("Login",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24)),
                            )
                          ],
                        ),              ),
                     ),
                     Row(
                    children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 6,left: 27),
                          child: Text("To Continue ERP App",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
                        )
                      ],
                  ),
                  Row(
                    children: [
                       Padding(
                          padding: EdgeInsets.only(top:14,left: 27),
                          child: SvgPicture.asset("assets/svg/green_dots.svg",width: 88,height: 6))
                    ],
                  ),
                  Row(
                    children: [ Padding(
                      padding: EdgeInsets.only(top: 32,left: 27,right: 5),
                      child: Container(height: 50,width: 307,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(16),),  
                      child: Row(
                              children: [
                                Padding(
                                   padding: const EdgeInsets.only(left: 17),
                                  child: SvgPicture.asset("assets/svg/mobile.svg",height: 25,width: 16,),
                                ),
                                 Padding(
                                  padding: const EdgeInsets.only(left: 17,),
                                  child: SvgPicture.asset("assets/svg/vertical_line.svg",height: 18,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:17,right: 17),
                                  child: SvgPicture.asset("assets/svg/91.svg",height: 18,),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20,bottom:7 ),
                                      child: Container(height: 21,width: 190,
                                      child: const Padding(
                                        padding: EdgeInsets.only(bottom: 1),
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(bottom: 15),
                                             border: InputBorder.none,
                                             hintText: "Mobile Number",
                                        ),
                                        ),
                                      )
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                  ),
                    )],
                  ),
                   Padding(
                padding: const EdgeInsets.only(left: 28,right: 26,top: 17),
                child: Container(height: 50,width: 321,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(16),
                          ),  
                          child: Row(
                            children: [
                              Padding(
                                 padding: const EdgeInsets.only(left: 17),
                                child: SvgPicture.asset("assets/svg/password_symbol_text.svg",height: 21,width: 21,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 17,right: 17),
                                child: SvgPicture.asset("assets/svg/vertical_line.svg",height: 18,),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20,bottom:7 ),
                                    child: Container(height: 21,width: 158,
                                    child: const Padding(
                                      padding: EdgeInsets.only(bottom: 1),
                                      child: TextField(
                                        obscureText: true,
                                        obscuringCharacter: "*",
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(bottom: 15),
                                           border: InputBorder.none,
                                           hintText: "Password",
                                      ),
                                      ),
                                    )
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only
                                (left: 20),
                                child: Container(height: 18,
                                  child: Text("Show",style: TextStyle(color:Color.fromRGBO(35, 133, 59, 1),fontWeight: FontWeight.w600,fontSize: 12),)),
                              )
                            ],
                          ),
                        ),
              ), 
              Padding(
                padding: const EdgeInsets.only(left: 126,right: 27,top: 17,bottom: 17),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, MyRoutes.ForgotPassRoute);
                      },
                    child: Text("Forgot Passwrd?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Color.fromRGBO(35, 133, 59, 1)),))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 26,right: 26),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  ClipRRect(borderRadius: BorderRadius.circular(16),
                  child: Container(height:50,width:306,
                  child:ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.OtpPageRoute);
                  }, 
                  child: Text("Login",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500)),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(35, 133, 59, 1))),
                  )
                  )
                  )
                   ],
                  ),
              ),
               Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Padding(
                          padding: EdgeInsets.only(top: 17,),
                          child: SvgPicture.asset("assets/svg/or_svg.svg",width: 210,height: 18))
                    ],
                  ),
                  Padding(
                padding: const EdgeInsets.only(top:17,left: 26,right: 26),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  ClipRRect(borderRadius: BorderRadius.circular(16),
                  child: Container(height:50,width:306,
                  child:ElevatedButton(onPressed: () { }, 
                  child: SvgPicture.asset("assets/svg/continue_guest_svg.svg"),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromRGBO(35, 133, 59, 1))),
                  )
                  )
                  )
                   ],
                  ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 17,),
                          child: Text("Don't have an account?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
                        )
                      ],

                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 6,bottom: 27),
                          child: Text("Create New Account",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color.fromRGBO(35, 133, 59, 1))),
                        )
                      ],

                  ),
                  ]),
            ),
                
              
            ),
          ),
        )
        ;    
  }
}