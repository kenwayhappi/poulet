import 'package:flutter/material.dart';

class HomePageArtisan extends StatefulWidget {
  const HomePageArtisan({Key? key}) : super(key: key);

  @override
  _HomePageArtisanState createState() => _HomePageArtisanState();
}

class _HomePageArtisanState extends State<HomePageArtisan> {
  // Variable pour indiquer si l'artisan est disponible ou non
  bool _isAvailable = true;

  // Liste des demandes récentes (exemple)
  final List<String> recentRequests = [
    "Plomberie - Appartement 101",
    "Électricité - Maison de ville",
    "Peinture - Bureau de direction",
  ];

  // Toggle la disponibilité de l'artisan
  void _toggleAvailability() {
    setState(() {
      _isAvailable = !_isAvailable;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Informations de profil
          Row(
            children: [
              const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nicolas Adams',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Plombier',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Bouton pour indiquer la disponibilité
          ElevatedButton(
            onPressed: _toggleAvailability,
            style: ElevatedButton.styleFrom(
              backgroundColor: _isAvailable ? Colors.green : Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              _isAvailable ? 'Disponible' : 'Indisponible',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),

          // Liste des demandes récentes
          const Text(
            'Demandes récentes',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: recentRequests.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  elevation: 5,
                  child: ListTile(
                    leading: const Icon(Icons.work, size: 40, color: Colors.blue),
                    title: Text(recentRequests[index]),
                    onTap: () {
                      // Logique pour consulter plus de détails sur la demande
                    },
                  ),
                );
              },
            ),
          ),

          // Bouton pour accéder à la gestion des services
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Redirection vers la page de gestion des services
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Gérer mes services',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
