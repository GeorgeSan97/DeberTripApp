import 'package:flutter/material.dart';

class ProfilePlaces extends StatelessWidget {
  const ProfilePlaces({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final paddingTop = screenHeight * 0.40; // un poco más arriba

    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: ListView(
        padding: const EdgeInsets.only(bottom: 40.0),
        physics: const ClampingScrollPhysics(),
        children: const [
          ProfilePlaceCard(
            image: 'assets/images/bosque.jpg',
            title: 'Knuckles Mountains Range',
            description: 'Hiking, Water fall hunting, Natural bath,\nScenery & Photography',
            steps: '123,123,123',
          ),
          SizedBox(height: 40),
          ProfilePlaceCard(
            image: 'assets/images/arbol.jpg',
            title: 'Lake View',
            description: 'Sunset view, Relaxing spot, Boating',
            steps: '98,234',
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class ProfilePlaceCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String steps;

  const ProfilePlaceCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    const double imageHeight = 400;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: imageHeight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              height: imageHeight,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 20, // Tarjeta más arriba
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Steps: ",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            steps,
                            style: const TextStyle(
                              color: Colors.orange,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.green,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
