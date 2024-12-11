import 'package:flutter/material.dart';

class ProfilePageArtisan extends StatefulWidget {
  const ProfilePageArtisan({Key? key}) : super(key: key);

  @override
  _ProfilePageArtisanState createState() => _ProfilePageArtisanState();
}

class _ProfilePageArtisanState extends State<ProfilePageArtisan> {
  // Variable pour gérer le thème sombre/clair
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDarkMode ? Colors.black87 : Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Bouton pour changer le mode clair/sombre
            IconButton(
              icon: Icon(
                _isDarkMode ? Icons.brightness_7 : Icons.brightness_4,
                color: _isDarkMode ? Colors.white : Colors.black,
                size: 30,
              ),
              onPressed: _toggleTheme,
            ),
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            const SizedBox(height: 10),
            Text(
              'Nicolas Adams',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: _isDarkMode ? Colors.white : Colors.black, // Couleur du texte
              ),
            ),
            Text(
              'nicolasadams@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: _isDarkMode ? Colors.white70 : Colors.grey, // Couleur du texte
              ),
            ),
            const SizedBox(height: 20),

            // Bouton "Edit Profil"
            ElevatedButton(
              onPressed: () {
                // Logique pour éditer le profil (ex. redirection vers une page de modification)
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: _isDarkMode ? Colors.blueAccent : Colors.blue, // Couleur du bouton
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Edit Profil',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 0),

            Expanded(
              child: ListView(
                children: [
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    color: _isDarkMode ? Colors.grey[800] : Colors.white,
                    child: ListTile(
                      leading: const Icon(Icons.lock, size: 40, color: Colors.blue),
                      title: Text(
                        'Privacy',
                        style: TextStyle(
                          color: _isDarkMode ? Colors.white : Colors.black, // Couleur du texte
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    color: _isDarkMode ? Colors.grey[800] : Colors.white,
                    child: ListTile(
                      leading: const Icon(Icons.help, size: 40, color: Colors.blue),
                      title: Text(
                        'Help & Support',
                        style: TextStyle(
                          color: _isDarkMode ? Colors.white : Colors.black, // Couleur du texte
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    color: _isDarkMode ? Colors.grey[800] : Colors.white,
                    child: ListTile(
                      leading: const Icon(Icons.settings, size: 40, color: Colors.blue),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                          color: _isDarkMode ? Colors.white : Colors.black, // Couleur du texte
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    color: _isDarkMode ? Colors.grey[800] : Colors.white,
                    child: ListTile(
                      leading: const Icon(Icons.person_add, size: 40, color: Colors.blue),
                      title: Text(
                        'Invite a Friend',
                        style: TextStyle(
                          color: _isDarkMode ? Colors.white : Colors.black, // Couleur du texte
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    color: _isDarkMode ? Colors.grey[800] : Colors.white,
                    child: ListTile(
                      leading: const Icon(Icons.logout, size: 40, color: Colors.red),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                          color: _isDarkMode ? Colors.white : Colors.black, // Couleur du texte
                        ),
                      ),
                      onTap: () {
                        // Logique pour la déconnexion
                      },
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
