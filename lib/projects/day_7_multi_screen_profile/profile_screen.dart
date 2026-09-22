import 'package:flutter/material.dart';

import 'package:flutter_learning/widgets/DecorativeBlob.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    height: 400,
                    child: Container(
                      width: double.infinity,
                      color: const Color(0xFF003049),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const Positioned(
                              top: 80,
                              left: 120,
                              child: DecorativeBlob(
                                width: 200,
                                height: 200,
                                color: Color(0xFF13B9FD),
                                opacity: 0.18,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            const Positioned(
                              top: 10,
                              right: -50,
                              child: DecorativeBlob(
                                width: 140,
                                height: 90,
                                color: Color(0xFF669BBC),
                                opacity: 0.10,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 32),
                              child: Column(
                                children: [
                                  Center(
                                    child: Column(
                                      children: [
                                        const Text(
                                          "Profile",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        SizedBox(
                                          width: 120,
                                          height: 120,
                                          child: Stack(
                                            children: [
                                              Center(
                                                child: ClipOval(
                                                  child: Container(
                                                    width: 120,
                                                    height: 120,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            width: 2,
                                                            color:
                                                                Colors.white),
                                                        image: const DecorationImage(
                                                            image: AssetImage(
                                                                "assets/my_profile.png"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                top: 90,
                                                right: 10,
                                                child: Container(
                                                  width: 30,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color:
                                                        const Color(0xFF003049),
                                                    border: Border.all(
                                                        width: 2,
                                                        color: Colors.white),
                                                  ),
                                                  child: const Icon(
                                                    Icons.camera_alt,
                                                    color: Colors.white,
                                                    size: 15,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        const Text(
                                          "Abderrazak Lahcene",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        const Text(
                                          "Flutter Developer",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w100,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 260,
                    left: 20,
                    right: 20,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 21, vertical: 12),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.email,
                                    size: 21,
                                    color: Color(0xFF003049),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    children: [
                                      Text("zaclahcene@gmail.com"),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              indent: 50,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.business_center,
                                    size: 21,
                                    color: Color(0xFF003049),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text("Flutter Developer"),
                                ],
                              ),
                            ),
                            Divider(
                              indent: 50,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 21,
                                    color: Color(0xFF003049),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text("Oud Naguess, Tebessa, Algeria"),
                                ],
                              ),
                            ),
                            Divider(
                              indent: 50,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 4, horizontal: 12),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    size: 21,
                                    color: Color(0xFF003049),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Text("Joined January"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "12",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Projects",
                              style: TextStyle(
                                  color: Color.fromRGBO(192, 192, 192, 1)),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        width: 1,
                        thickness: 1,
                        color: Color.fromARGB(255, 206, 206, 206),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "250",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                  color: Color.fromRGBO(192, 192, 192, 1)),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        width: 1,
                        thickness: 1,
                        color: Color.fromARGB(255, 206, 206, 206),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "5",
                              style: TextStyle(
                                  fontSize: 21, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                  color: Color.fromRGBO(192, 192, 192, 1)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF003049),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    icon: const Icon(Icons.edit),
                    label: const Text(
                      "Edit Profile",
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
