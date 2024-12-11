import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 90, 223, 94), // Couleur de fond
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ajout de l'animation Lottie
            Lottie.asset(
              'assets/animation/animation1.json', // Assurez-vous que le chemin du fichier est correct
              height: 200, // Ajustez la taille de l'animation
              width: 200,
            ),
            const SizedBox(
                height: 20), // Espacement entre l'animation et le texte
            // Texte explicatif
            const Text(
              'Besoin d\'un artisan ou d\'un prestataire près de chez vous ?\n'
              'HandyPro vous connecte avec les meilleurs plombiers, électriciens, peintres, et bien plus encore.\n'
              'Simple, rapide et fiable !',
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
