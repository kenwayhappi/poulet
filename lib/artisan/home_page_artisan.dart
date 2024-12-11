import 'package:flutter/material.dart';

class HomePageArtisan extends StatefulWidget {
  @override
  _HomePageArtisanState createState() => _HomePageArtisanState();
}

class _HomePageArtisanState extends State<HomePageArtisan> {
  // Exemple de données pour les stories
  final List<Map<String, String>> stories = [
    {'name': 'User 1', 'image': 'https://via.placeholder.com/150'},
    {'name': 'User 2', 'image': 'https://via.placeholder.com/150'},
    {'name': 'User 3', 'image': 'https://via.placeholder.com/150'},
    {'name': 'User 4', 'image': 'https://via.placeholder.com/150'},
  ];

  // Exemple de publications des utilisateurs
  final List<Map<String, String>> posts = [
    {
      'name': 'User 1',
      'image': 'https://via.placeholder.com/200',
      'content': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    },
    {
      'name': 'User 2',
      'image': 'https://via.placeholder.com/200',
      'content': 'Curabitur ac leo nunc. Vestibulum et mauris vel ante.'
    },
    {
      'name': 'User 3',
      'image': 'https://via.placeholder.com/200',
      'content': 'Aenean aliquam molestie leo, a suscipit orci.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            pinned: true,
            floating: false,
            automaticallyImplyLeading: false, // Pas de flèche de retour
            expandedHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'HandyPro',
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              // Section des stories avec bouton "Créer une story"
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length + 1, // Ajouter 1 pour "Créer une story"
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blue,
                              child: IconButton(
                                icon: const Icon(Icons.add, color: Colors.white),
                                onPressed: () {}, // Action à définir pour créer une story
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Créer une story',
                              style: TextStyle(fontSize: 12, color: Colors.blue),
                            ),
                          ],
                        ),
                      );
                    }
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(stories[index - 1]['image']!),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            stories[index - 1]['name']!,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              // Liste des publications
              ...posts.map((post) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(post['image']!),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              post['name']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(post['content']!),
                        const SizedBox(height: 10),
                        Image.network(post['image']!),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ]),
          ),
        ],
      ),
    );
  }
}
