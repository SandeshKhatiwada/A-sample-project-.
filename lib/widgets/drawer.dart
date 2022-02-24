import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://media.istockphoto.com/photos/smiling-indian-business-man-working-on-laptop-at-home-office-young-picture-id1307615661?b=1&k=20&m=1307615661&s=170667a&w=0&h=Zp9_27RVS_UdlIm2k8sa8PuutX9K3HTs8xdK0UfKmYk=";
    return Drawer(
      child: Container(
        color: Colors.orange,
        child: ListView(
          children:[
            DrawerHeader(
               padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.orange),

                accountName: Text("Sandesh Khatiwada",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),

                accountEmail: Text("sandeshkhatiwada12@gmail.com"),
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
                textScaleFactor: 1.3,
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
                textScaleFactor: 1.3,
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
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,

                ),
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.square_arrow_left,
                color: Colors.white,
              ),
              title: Text(
                "Log Out",
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.white,

                ),
              ),

            ),

          ],
        ),
      ),
    );
  }
}
