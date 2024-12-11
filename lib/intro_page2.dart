import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 205, 68, 58),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ajout de l'animation Lottie
            Lottie.asset(
              'assets/animation/animation2.json', // Chemin de l'animation anime2.json
              height: 200, // Ajustez la hauteur selon vos besoins
              width: 200,
            ),
            const SizedBox(
                height: 20), // Espacement entre l'animation et le texte
            // Ajout du texte explicatif
            const Text(
              'Consultez les profils, lisez les avis et contactez\n'
              'directement les professionnels. Plus besoin de chercher,\n'
              'tout est à portée de main avec HandyPro.',
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
