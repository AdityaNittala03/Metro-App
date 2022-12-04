import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
    image: DecorationImage(image: AssetImage('assets/img3.png'),fit: BoxFit.cover
    )
    ),
    child: Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
      elevation: 0,),
    backgroundColor: Colors.transparent,
    body: Column(
      children:[
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 15),
              child: ElevatedButton(onPressed: (){}, child: Text('Account',style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(24),
                backgroundColor: Colors.black,
          ),
        ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 15),
              child: ElevatedButton(onPressed: (){}, child: Text('Stations',
                style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              padding: EdgeInsets.all(24),
              backgroundColor: Colors.black,
                  ),
                 ),
        ),
             ],
           ),
        SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 15),
              child: ElevatedButton(onPressed: (){}, child: Text('Bookings',
                style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                  backgroundColor: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 15),
              child: ElevatedButton(onPressed: (){}, child: Text('Maps',
                style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(left: 23,right: 23,top: 15),
              child: ElevatedButton(onPressed: (){}, child: Text('About',
                style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                  backgroundColor: Colors.black,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 23,right: 23,top: 15),
              child: ElevatedButton(onPressed: (){}, child: Text('Help',
                style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(24),
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ],
    )
      )
    );
  }
}
