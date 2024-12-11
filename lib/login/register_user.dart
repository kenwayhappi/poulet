import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lottie/lottie.dart';
import '../user/dashboard_user.dart'; // Import de la page DashboardUser

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  _RegisterUserState createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _gender = ''; // Sexe de l'utilisateur

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Animation en haut de la page
              Lottie.asset(
                'assets/animation/animationregister.json', // Remplacez par votre animation
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 30),

              const Text(
                'Créez votre compte utilisateur.',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              // Formulaire avec validation
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Champ de texte pour le prénom
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        labelText: 'Prénom',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre prénom';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Champ de texte pour le nom
                    TextFormField(
                      controller: _surnameController,
                      decoration: InputDecoration(
                        labelText: 'Nom',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer votre nom';
                        }
                        return null;
                      },
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
                      validator: (value) {
                        if (value == null || value.isEmpty || !value.contains('@')) {
                          return 'Veuillez entrer un email valide';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Champ de mot de passe
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Mot de passe',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Veuillez entrer un mot de passe';
                        }
                        return null;
                      },
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
                    const SizedBox(height: 20),

                    // Bouton pour créer un compte
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Si la validation réussit, naviguer vers DashboardUser
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const DashboardUser()),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
                              color: Colors.blue,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
