import 'package:chat_app_ui/screens/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();

}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Profile", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                    IconButton(
                      icon:Icon(Icons.settings, size: 35),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:70),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://randomuser.me/api/portraits/women/1.jpg"),
                  maxRadius: 80,
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(top:25),
              child: Center(
                child: Text("Jane Russel", style: TextStyle(fontSize: 25),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:10),
              child: Center(
                child: Text("jane.russel@gmail.com", style: TextStyle(fontSize:15, color: Colors.grey),),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:100),
              child: Center(

                child: Container(
                  height: 50,
                  width: 250,

                  child: ElevatedButton(
                    onPressed:(){},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder> (
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0)
                        )
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Log Out", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),),
                        Text("    "),
                        Icon(Icons.logout, color: Colors.white,size: 30,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}