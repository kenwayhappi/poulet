import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Ajout d'une couleur de fond directement dans le Scaffold
      backgroundColor: Colors.yellow, // Définir la couleur de fond ici
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ajout de l'animation Lottie
            Lottie.asset(
              'assets/animation/animation3.json', // Assurez-vous que le chemin de l'animation est correct
              height: 200, // Ajustez la taille de l'animation
              width: 200,
            ),
            const SizedBox(
                height: 20), // Espacement entre l'animation et le texte
            // Texte explicatif
            const Text(
              'Gagnez du temps en trouvant le prestataire\n'
              'idéal en quelques clics. HandyPro, c’est votre\n'
              'solution pour tous vos petits ou grands travaux.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
