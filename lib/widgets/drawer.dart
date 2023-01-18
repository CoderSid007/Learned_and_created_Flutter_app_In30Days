import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final imageUrl= "https://avatars.githubusercontent.com/u/105408894?s=400&u=5d3e97ad5be5e1c944322e52ed0175e4bb3140f7&v=4";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                  ),
                  accountName: Text("Siddhes"),
                  accountEmail: Text("work.siddhes@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )


              ),
            ),
            ListTile(

              leading: Icon(
                  CupertinoIcons.home,
                color: Colors.white,
              ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
              color: Colors.white,
            ),
            ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],

        ),
      ),

    );
  }
}
