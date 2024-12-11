import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lottie/lottie.dart';

class RegisterArtisan extends StatefulWidget {
  const RegisterArtisan({Key? key}) : super(key: key);

  @override
  _RegisterArtisanState createState() => _RegisterArtisanState();
}

class _RegisterArtisanState extends State<RegisterArtisan> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  String _selectedJob = 'Plombier'; // Travail sélectionné par défaut
  String _gender = ''; // Sexe de l'utilisateur

  List<String> _jobs = [
    'Plombier',
    'Électricien',
    'Maçon',
    'Peintre',
    'Menuisier',
    'Ménagère',
    'Cuisinier',
    'Jardinier'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Animation avec Lottie
                Lottie.asset(
                  'assets/animation/animationregister.json', // Remplacez par votre animation
                  height: 200,
                  width: 200,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Créez votre compte artisan.',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                // Champ de texte pour le prénom
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Prénom',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 20),

                // Champ de texte pour le nom
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nom',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 20),

                // Champ de texte pour l'email
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 20),

                // Champ de numéro de téléphone avec indicateur de pays
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Numéro de téléphone',
                    border: OutlineInputBorder(),
                  ),
                  initialCountryCode: 'CM', // Code par défaut : Cameroun
                  keyboardType: TextInputType.phone, // Clavier téléphonique
                  onChanged: (phone) {
                    print(phone.completeNumber); // Récupère le numéro complet
                  },
                  onCountryChanged: (country) {
                    print('Pays sélectionné : ${country.name}');
                  },
                ),
                const SizedBox(height: 20),

                // Sélection du travail
                DropdownButtonFormField<String>(
                  value: _selectedJob,
                  decoration: InputDecoration(
                    labelText: 'Votre travail',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.work),
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedJob = newValue!;
                    });
                  },
                  items: _jobs.map((String job) {
                    return DropdownMenuItem<String>(
                      value: job,
                      child: Text(job),
                    );
                  }).toList(),
                ),
                const SizedBox(height: 20),

                // Sexe (Homme ou Femme)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Sexe:'),
                    Radio<String>(
                      value: 'Homme',
                      groupValue: _gender,
                      onChanged: (String? value) {
                        setState(() {
                          _gender = value!;
                        });
                      },
                    ),
                    const Text('Homme'),
                    Radio<String>(
                      value: 'Femme',
                      groupValue: _gender,
                      onChanged: (String? value) {
                        setState(() {
                          _gender = value!;
                        });
                      },
                    ),
                    const Text('Femme'),
                  ],
                ),
                const SizedBox(height: 10),

                // Bouton pour créer un compte
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Gérer l'inscription de l'artisan
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                  ),
                  child: const Text(
                    'Créer un compte',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 20),

                // Lien pour revenir à la page de connexion
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Vous avez déjà un compte ? ',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Retourne à la page précédente
                      },
                      child: const Text(
                        'Se connecter',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 16,
                        ),
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
