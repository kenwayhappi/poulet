import 'package:flutter/material.dart';
import 'package:projet1/artisan/dashboard_artisan.dart'; // Page de tableau de bord artisan
import 'package:lottie/lottie.dart';
import 'package:projet1/login/register_artisan.dart'; // Page d'inscription artisan

class LoginArtisan extends StatelessWidget {
  const LoginArtisan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Ajout de l'image
                Lottie.asset(
                  'assets/animation/animationlogin.json', // Remplacez par votre image
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 20), // Espacement entre l'image et le formulaire

                const Text(
                  'Connectez-vous avec vos identifiants artisan.',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                // Champ de texte pour l'email
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 20),

                // Champ de texte pour le mot de passe
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 30),

                // Bouton de connexion
                ElevatedButton(
                  onPressed: () {
                    // Simulez la connexion et naviguez vers le DashboardArtisan
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DashboardArtisan(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                  child: const Text(
                    'Se connecter',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20),

                // Lien "Mot de passe oublié"
                TextButton(
                  onPressed: () {
                    // Ajouter la logique pour réinitialiser le mot de passe
                  },
                  child: const Text(
                    'Mot de passe oublié ?',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Lien "Pas de compte ? Créez un compte"
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Pas de compte ? ',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        // Naviguer vers la page d'inscription artisan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterArtisan(),
                          ),
                        );
                      },
                      child: const Text(
                        'Créez un compte',
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
