import 'package:flutter/material.dart';
import 'package:trip_app/page2/location.dart';
import 'package:trip_app/page3/user.dart';
import 'page1/description_place.dart';
import 'page1/review_list.dart';
import 'page1/header_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final descriptionDummy = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              const SizedBox(height: 120),
              DescriptionPlace(
                namePlace: 'Duwili Ella',
                numberStarts: 4,
                descriptionDummy: descriptionDummy,
              ),
              const ReviewList(),
            ],
          ),
          HeaderAppBar(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xFF4268D3),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LocationScreen(),
              ),
            );
          } else {
            setState(() {
              currentIndex = index;
            });
          }
          if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UserScreen(),
              ),
            );
          } else {
            setState(() {
              currentIndex = index;
            });
          }
        },
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
      // Si estás usando un FAB en esta pantalla, asegúrate de poner un tag único
      floatingActionButton: FloatingActionButton(
        heroTag: 'fab-home', // Tag único para evitar conflicto
        onPressed: () {
          // Acción del botón
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
