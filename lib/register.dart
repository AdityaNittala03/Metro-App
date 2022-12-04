import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    // cannot set bg on scaffold so we'll return container
    // in container we can set bg
    return Container(decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/img2.png'),fit: BoxFit.cover
        )
    ),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,
        elevation: 0,),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 50, top:90, bottom: 30),
              child: Text('Create\nAccount', style: GoogleFonts.cantataOne( textStyle: TextStyle(
                color: Colors.black,
                fontSize: 29,),
              )
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.25,right: 35,left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          hintText: 'Full Name',
                          hintStyle: TextStyle(
                            color: Colors.black
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),),
                        SizedBox(
                        height: 24,
                      ),
                    TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              color: Colors.black
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),),
                    SizedBox(height: 24),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.black)
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.black
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                        children: [ElevatedButton(onPressed: (){
                          Navigator.pushNamed(context, 'home');
                        },  style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                        ),child: Text('Sign up',
                    style: TextStyle(fontSize: (20),
                    color: Colors.black),))
                    ]
                    ),
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
