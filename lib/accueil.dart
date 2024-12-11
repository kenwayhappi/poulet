import 'package:flutter/material.dart';
import 'package:projet1/login/login_artisan.dart'; // Page de login artisan
import 'package:projet1/login/login_user.dart'; // Page de login utilisateur

class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenue sur HandyPro'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Bienvenue sur HandyPro !\n'
              'Votre solution pour trouver des artisans qualifiés ou trouver des prestataires de services près de chez vous.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 30),

            // Choix entre un professionnel ou un particulier
            const Text(
              'Êtes-vous un professionnel ou quelqu\'un recherchant un artisan ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Choix entre un artisan ou un utilisateur
            ElevatedButton(
              onPressed: () {
                // Naviguer vers la page de login artisan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginArtisan(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Couleur du bouton
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Je suis un professionnel (Artisan)',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Naviguer vers la page de login utilisateur
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginUser(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Couleur du bouton
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Je cherche un artisan',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
