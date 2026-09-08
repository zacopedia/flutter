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
      body: Container(
        color: const Color.fromARGB(255, 241, 244, 249),
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(horizontal: 18),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
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
                height: 12,
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
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 96, 131, 255),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.task_alt,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "Tasks",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "12",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Pending",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 140, 140, 141)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 41, 169, 79),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.notifications,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "Notifications",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "New",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 140, 140, 141)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 133, 50, 174),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.email,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "Messages",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Unread",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 140, 140, 141)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 231, 106, 38),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.folder,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "Projects",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "3",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "In Progress",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 140, 140, 141)),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              width: 250,
              content: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 54, 154, 18),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Icon(
                      Icons.check,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  const Text("Action added"),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              behavior: SnackBarBehavior.floating,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
