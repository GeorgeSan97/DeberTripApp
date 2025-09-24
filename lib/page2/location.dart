import 'package:flutter/material.dart';
import 'package:trip_app/page3/user.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  int currentIndex = 1; // Índice correspondiente a 'Buscar'

  void onTabTapped(int index) {
    // Aquí podrías manejar navegación si agregas más pantallas
    setState(() {
      currentIndex = index;
    });

    if (index == 0) {
      Navigator.pop(context); // Regresar a Home
    }
    else if (index == 4) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const UserScreen(), // Asegúrate de que esta ruta sea correcta
        ),
      );
    }
    // Puedes agregar más navegación condicional si creas nuevas páginas
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo con degradado
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors:[Color(0xFF5D6BF8), Color(0xFF475AE8)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // Imagen del mapa con borderRadius
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              child: Image.asset(
                'assets/images/mapa.png',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),

          // Título y buscador
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Knuckles Mountain Range",
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xFF4268D3),
        unselectedItemColor: Colors.grey,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Ubicación',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Campana',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Usuario',
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        heroTag: 'fab-location',
        onPressed: () {
          // Acción del FAB
        },
        child: const Icon(Icons.location_on),
      ),
    );
  }
}
