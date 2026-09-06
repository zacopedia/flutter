import 'package:flutter/material.dart';

class PersonalDashboard extends StatefulWidget {
  const PersonalDashboard({super.key});

  @override
  State<PersonalDashboard> createState() => _PersonalDashboardState();
}

class _PersonalDashboardState extends State<PersonalDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Dashboard"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 237, 242, 251)),
              child: Padding(
                padding: EdgeInsets.only(top: 8, left: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text(
                        "Zac Lahcene",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),

                    // padding: EdgeInsets.only(top: 4),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Text(
                        "Frontend Developer",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 16),
              horizontalTitleGap: 8,
              leading: Icon(
                Icons.home,
                size: 25,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 16),
              horizontalTitleGap: 8,
              leading: Icon(
                Icons.person,
                size: 25,
              ),
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 16),
              horizontalTitleGap: 8,
              leading: Icon(
                Icons.settings,
                size: 25,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 16),
              horizontalTitleGap: 8,
              leading: Icon(
                Icons.info,
                size: 25,
              ),
              title: Text(
                "About",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 16),
              horizontalTitleGap: 8,
              leading: Icon(
                Icons.email,
                size: 25,
              ),
              title: Text(
                "Contact",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 6),
              child: Divider(),
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 16),
              horizontalTitleGap: 8,
              leading: Icon(
                Icons.logout,
                size: 25,
              ),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 18),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Column(
                    children: [
                      Text(
                        "Hello, Zac 👋",
                        style: TextStyle(fontSize: 24),
                      ),
                      Text("Good to see you again!")
                    ],
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://img.magnific.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?semt=ais_hybrid&w=740&q=80"),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  Image.asset("assets/dashboard_mountain_background.png"),
                  Positioned.fill(
                    child: Container(
                      color: Colors.black.withOpacity(0.2),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 32, left: 18),
                    child: Text(
                      '"Stay focused,\n kepp learning,\n and never give up."',
                      style: TextStyle(
                          fontSize: 21,
                          color: Color.fromARGB(255, 245, 241, 241)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
