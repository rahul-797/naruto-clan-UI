import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selected = index;
            });
          },
          currentIndex: selected,
          iconSize: 32,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.grey),
                label: "",
                activeIcon: Icon(Icons.home, color: Colors.white)),
            BottomNavigationBarItem(
                icon: Icon(Icons.leaderboard, color: Colors.grey),
                label: "",
                activeIcon: Icon(Icons.leaderboard, color: Colors.white)),
            BottomNavigationBarItem(
                icon: Icon(Icons.star, color: Colors.grey),
                label: "",
                activeIcon: Icon(Icons.star, color: Colors.white)),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: Colors.grey),
                label: "",
                activeIcon: Icon(Icons.account_circle, color: Colors.white)),
          ],
        ),
        body: selected == 0
            ? Column(
                children: [
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: Text(
                        "Clan",
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.amber,
                                      width: 4,
                                    ),
                                  ),
                                  child: Image.asset(
                                    "assets/images/main.jpg",
                                    fit: BoxFit.fitWidth,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                                const Positioned(
                                  bottom: 36,
                                  left: 24,
                                  child: Text(
                                    "Clan name: Akimichi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 16,
                                  left: 24,
                                  child: Text(
                                    "28 members, 5 online",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 32),
                            const Text(
                              "Achievements",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(24, 16, 24, 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Current league",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Image.asset(
                                    "assets/images/league.png",
                                    width: 80,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(24, 0, 48, 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "League ranking",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "11",
                                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Experience",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    "2000XP",
                                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                            const Divider(thickness: 2, color: Colors.grey),
                            const SizedBox(height: 24),
                            const Text(
                              "Past featured performances",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 24, 0, 12),
                              child: ListTile(
                                leading: Image.asset("assets/images/portrait.jpg"),
                                title: const Text("Ankit in International Debating League"),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 12, 0, 8),
                              child: ListTile(
                                leading: Image.asset("assets/images/portrait.jpg"),
                                title: const Text("Ankit in Global Quizzing Finals"),
                              ),
                            ),
                            const Center(
                              child: Text(
                                "See more",
                                style: TextStyle(color: Colors.white70, fontSize: 16),
                              ),
                            ),
                            const SizedBox(height: 24),
                            const Divider(thickness: 2, color: Colors.grey),
                            const SizedBox(height: 24),
                            const Text(
                              "Live clan activities on platform",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 24),
                            Image.asset(
                              "assets/images/poster.jpg",
                              fit: BoxFit.fitWidth,
                              filterQuality: FilterQuality.high,
                            ),
                            const SizedBox(height: 16),
                            const Center(
                              child: Text(
                                "See more",
                                style: TextStyle(color: Colors.white70, fontSize: 16),
                              ),
                            ),
                            const SizedBox(height: 16),
                            const Divider(thickness: 2, color: Colors.grey),
                            const SizedBox(height: 24),
                            const Text(
                              "Clan discussions",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 24),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "General thread:",
                                    style: TextStyle(color: Colors.green, fontSize: 16),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "15 unread messages",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(height: 24),
                                  Text(
                                    "Latest episodes thread:",
                                    style: TextStyle(color: Colors.green, fontSize: 16),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "8 unread messages",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(height: 24),
                                  Text(
                                    "Character powers thread:",
                                    style: TextStyle(color: Colors.green, fontSize: 16),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "27 unread messages",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                            const Divider(thickness: 2, color: Colors.grey),
                            const SizedBox(height: 24),
                            const Text(
                              "Clan members",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 24),
                            const ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/portrait.jpg")),
                              title: Text("Lorem Ipsum - Clan head"),
                            ),
                            const SizedBox(height: 24),
                            const ListTile(
                              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/portrait.jpg")),
                              title: Text("Lorem Ipsum - Debating sensei"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : const Center(
                child: Text(
                "Empty",
                style: TextStyle(fontSize: 48),
              )),
      ),
    );
  }
}
