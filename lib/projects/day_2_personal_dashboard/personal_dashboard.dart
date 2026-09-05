import 'package:flutter/material.dart';

class PersonalDashboard extends StatefulWidget {
  const PersonalDashboard({super.key});

  @override
  State<PersonalDashboard> createState() => _PersonalDashboardState();
}

class _PersonalDashboardState extends State<PersonalDashboard> {
  bool notificationsEnable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings Screen"),
      ),
      body: Container(
        color: const Color.fromARGB(255, 244, 238, 238),
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 16),
              child: Text("Account"),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      const ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(
                          Icons.person,
                          size: 28,
                        ),
                        title: Text("Profile"),
                        subtitle: Text(
                          "Edit your personal information",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        trailing: Icon(Icons.chevron_right),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Color.fromARGB(255, 209, 204, 204),
                        ),
                      ),
                      const ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(
                          Icons.privacy_tip_sharp,
                          size: 28,
                        ),
                        title: Text("Privacy"),
                        subtitle: Text(
                          "Manage your privacy settings",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        trailing: Icon(Icons.chevron_right),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Color.fromARGB(255, 209, 204, 204),
                        ),
                      ),
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: const Icon(
                          Icons.notifications,
                          size: 28,
                        ),
                        title: const Text("Notifications"),
                        subtitle: const Text(
                          "Choose what you want",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        trailing: Switch(
                          value: notificationsEnable,
                          onChanged: (value) {
                            setState(() {
                              notificationsEnable = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )),
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 16),
              child: Text("General"),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Column(
                    children: [
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(
                          Icons.brightness_6,
                          size: 28,
                        ),
                        title: Text("Appearance"),
                        subtitle: Text(
                          "Light or dark theme",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        trailing: Icon(Icons.chevron_right),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Color.fromARGB(255, 209, 204, 204),
                        ),
                      ),
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(
                          Icons.language,
                          size: 28,
                        ),
                        title: Text("Language"),
                        subtitle: Text(
                          "Change app language",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        trailing: Icon(Icons.chevron_right),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Divider(
                          color: Color.fromARGB(255, 209, 204, 204),
                        ),
                      ),
                      ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        leading: Icon(
                          Icons.wifi,
                          size: 28,
                        ),
                        title: Text("Wi-Fi Only"),
                        subtitle: Text(
                          "Download only on Wi-Fi",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
