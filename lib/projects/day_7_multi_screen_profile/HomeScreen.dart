import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/DecorativeBlob.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isOnline = false;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 220,
            child: Container(
              width: double.infinity,
              color: const Color(0xFF003049),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      top: -50,
                      left: -60,
                      child: DecorativeBlob(
                        width: 180,
                        height: 120,
                        color: Color(0xFF13B9FD),
                        opacity: 0.18,
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
                    Positioned(
                      bottom: 38,
                      right: 18,
                      child: ClipOval(
                        child: Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2, color: Colors.white),
                              image: const DecorationImage(
                                  image: AssetImage("assets/my_profile.png"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 38,
                      right: 25,
                      child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isOnline ? Colors.green : Colors.grey,
                            border: Border.all(width: 2, color: Colors.white),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 18, bottom: 38),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Abderrazak Lahcene",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "let`s make today productive!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color.fromARGB(255, 238, 232, 232)),
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFF003049)),
                            child: const Icon(
                              Icons.person,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Profile",
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "View and edit your information",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFF003049)),
                            child: const Icon(
                              Icons.settings,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Settings",
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Customize your prefrence",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: const Color(0xFF003049)),
                            child: const Icon(
                              Icons.info,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Profile",
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "View and edit your information",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.chevron_right)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        child: NavigationBar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            indicatorColor: Colors.amber,
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: "Home",
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outlined),
                selectedIcon: Icon(Icons.person),
                label: "Profile",
              ),
              NavigationDestination(
                icon: Icon(Icons.settings_outlined),
                selectedIcon: Icon(Icons.settings),
                label: "Settings",
              ),
              NavigationDestination(
                icon: Icon(Icons.info_outlined),
                selectedIcon: Icon(Icons.info),
                label: "Info",
              )
            ]),
      ),
    );
  }
}
