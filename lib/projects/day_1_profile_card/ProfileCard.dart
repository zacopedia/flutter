import 'package:flutter/material.dart';
// import 'package:flutter_learning/projects/day_1_profile_card/ProfileCard.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 230, 230),
      body: Center(
        child: Container(
          width: 300,
          height: 450,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              color: const Color.fromARGB(255, 255, 255, 255)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.network(
                  "https://images.unsplash.com/photo-1566753323558-f4e0952af115?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bWFsZXxlbnwwfHwwfHx8MA%3D%3D",
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Column(
                  children: [
                    Text(
                      "Alex Morgan",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: EdgeInsets.only(top: 8)),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blueAccent),
                    ),
                    Padding(padding: EdgeInsets.only(top: 12)),
                    Text(
                        "Passionate about building beatuful and performant mobile apps with flutter",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center),
                    Padding(padding: EdgeInsets.only(top: 18)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(41, 33, 149, 243),
                            child: Icon(
                              Icons.person,
                              color: Colors.blue,
                            )),
                        SizedBox(width: 12),
                        CircleAvatar(
                            backgroundColor: Color.fromARGB(41, 76, 175, 79),
                            child: Icon(
                              Icons.email,
                              color: Colors.green,
                            )),
                        SizedBox(width: 12),
                        CircleAvatar(
                          backgroundColor: Color.fromARGB(41, 244, 67, 54),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
