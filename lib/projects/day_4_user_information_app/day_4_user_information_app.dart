import 'dart:math';

import 'package:flutter/material.dart';

Map<String, dynamic> user = {
  "age": 20,
  "nationality": "American",
  "email": "zlah@gmail.com",
  "job": "Frontend Developer"
};

class UserInformationApp extends StatefulWidget {
  const UserInformationApp({super.key});

  @override
  State<UserInformationApp> createState() => _UserInformationAppState();
}

class _UserInformationAppState extends State<UserInformationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("User Information")),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            const Column(
              children: [
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkex2RVv4wY6_qch3qrBEeDEEFUokPSvIjdawiTy20oibVbR731T8LOnU&s=10"),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Zac",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Frontend Developere",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 74, 123, 229)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  '"Turning ideas into beautiful \n user exeperiences.""',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14, color: Color.fromARGB(255, 144, 140, 140)),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 240, 240, 240)),
                  color: const Color.fromARGB(255, 254, 254, 254),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.person,
                          size: 25,
                          color: Color.fromARGB(255, 111, 106, 106),
                        ),
                      ),
                      const Text(
                        "age",
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      Text("${user["age"]}"),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.flag,
                          size: 25,
                          color: Color.fromARGB(255, 111, 106, 106),
                        ),
                      ),
                      const Text(
                        "Nationality",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        width: 35,
                      ),
                      Text(
                        "${user["nationality"]}",
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.email,
                          size: 20,
                          color: Color.fromARGB(255, 111, 106, 106),
                        ),
                      ),
                      const Text(
                        "Email",
                      ),
                      const SizedBox(
                        width: 75,
                      ),
                      Text(
                        "${user["email"]}",
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.work_rounded,
                          size: 20,
                          color: Color.fromARGB(255, 111, 106, 106),
                        ),
                      ),
                      const Text(
                        "Job",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      Text(
                        "${user["job"]}",
                        style: const TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 254, 254, 254),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 240, 240, 240)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, 2),
                    )
                  ]),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: Icon(
                              Icons.code,
                              size: 25,
                              color: Color.fromARGB(255, 111, 106, 106),
                            ),
                          ),
                          Text(
                            "Skills",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 4),
                            child: Text(
                              "4",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 74, 123, 229)),
                            ),
                          ),
                          Text(
                            "skills",
                            style: TextStyle(
                                color: Color.fromARGB(255, 74, 123, 229)),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Wrap(
                    spacing: 4,
                    runSpacing: 8,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 8),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text("JavaScript"),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 8),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text("Dart"),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 8),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text("Flutter"),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 9, vertical: 8),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text("HTML/CSS"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 240, 240, 240)),
                  color: const Color.fromARGB(255, 254, 254, 254),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: const Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12)),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.school,
                          size: 25,
                          color: Color.fromARGB(255, 111, 106, 106),
                        ),
                      ),
                      Text(
                        "Eduction",
                      ),
                      SizedBox(
                        width: 90,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.location_city,
                          size: 25,
                          color: Color.fromARGB(255, 111, 106, 106),
                        ),
                      ),
                      Text(
                        "City",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text(
                        "Algiers",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Icon(
                          Icons.holiday_village,
                          size: 20,
                          color: Color.fromARGB(255, 111, 106, 106),
                        ),
                      ),
                      Text(
                        "Hobbies",
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "Traveling, Reading, Coding",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 40)),
                  onPressed: () {},
                  icon: const Icon(Icons.send),
                  label: const Text("Contact Me")),
            )
          ],
        ),
      ),
    );
  }
}
