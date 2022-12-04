import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({Key? key}) : super(key: key);

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  @override
  Widget build(BuildContext context) {
    // cannot set bg on scaffold so we'll return container
    // in container we can set bg
    return Container(decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/img1.png'),fit: BoxFit.cover
        )
      ),
      child: Scaffold(backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 50, top:90),
            child: Text('Welcome to\nNAGPUR METRO!', style: GoogleFonts.cantataOne( textStyle: TextStyle(
              color: Colors.white,
              fontSize: 29,),
               )
              ),
            ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.4,right: 35,left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.white70,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),),
                    SizedBox(height: 24),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.white70,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Sign in',style: TextStyle(fontSize: 23,
                          fontWeight: FontWeight.w700,
                      color: Colors.white)),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xFFD50000),
                        child: IconButton(
                          color: Colors.white,
                          onPressed: (){},
                          icon: Icon(Icons.arrow_forward_ios_sharp),
                        ),
                      )
                    ],
                  ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        }, child: Text('Sign up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 17,
                            color: Colors.white,
                            ),
                          )
                        ),
                        TextButton(onPressed: (){}, child: Text('Forgot Password',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 17,
                            color: Colors.white,
                          ),))
                      ],
                    )
                  ],
                ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
