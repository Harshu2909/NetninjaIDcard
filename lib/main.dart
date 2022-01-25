import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaCounter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text(
          "Ninja ID card",
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            ninjaCounter = ninjaCounter+1;
          });
        },
        
        child: Icon(
          Icons.add,
          ),
          backgroundColor: Colors.black,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 30.0, 3.0, 40.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
           //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/unnamed.png',
                  ),
                radius: 50.0,
              ),
            ),
            Divider(height: 90.0, 
            color: Colors.grey,
            ),
            Center(
              child: Text(
                "Name",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                "Herry",
                style: TextStyle(
                    color: Colors.yellow[700],
                    fontSize: 21.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Text(
                "current Ninja Level",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                "Level $ninjaCounter",
                style: TextStyle(
                    color: Colors.yellow[700],
                    fontSize: 21.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          SizedBox(height: 20.0,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end  ,
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.email,
              color: Colors.white,
            ),
            SizedBox(width: 10.0,),
            Text(
              "herry.potter@yahoo.com",
              style:TextStyle( 
                color:Colors.white,
                
            ))
          ],
          )
          ],
        ),
      
      ),
    );
  }
}
