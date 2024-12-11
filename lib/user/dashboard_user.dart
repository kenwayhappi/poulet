import 'package:flutter/material.dart';

class DashboardUser extends StatefulWidget {
  const DashboardUser({Key? key}) : super(key: key);

  @override
  _DashboardUserState createState() => _DashboardUserState();
}

class _DashboardUserState extends State<DashboardUser> {
  int _selectedIndex = 2;

  final List<Widget> _pages = [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Tools Page', style: TextStyle(fontSize: 24))),
    ProfilePage(),
    Center(child: Text('Notifications Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('More Page', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.build), label: 'Tools'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            const SizedBox(height: 10),
            const Text(
              'Nicolas Adams',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const Text(
              'nicolasadams@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    child: ListTile(
                      leading: const Icon(Icons.lock, size: 40, color: Colors.blue),
                      title: const Text('Privacy'),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    child: ListTile(
                      leading: const Icon(Icons.help, size: 40, color: Colors.blue),
                      title: const Text('Help & Support'),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    child: ListTile(
                      leading: const Icon(Icons.settings, size: 40, color: Colors.blue),
                      title: const Text('Settings'),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    child: ListTile(
                      leading: const Icon(Icons.person_add, size: 40, color: Colors.blue),
                      title: const Text('Invite a Friend'),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    child: ListTile(
                      leading: const Icon(Icons.logout, size: 40, color: Colors.red),
                      title: const Text('Logout'),
                      onTap: () {},
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
