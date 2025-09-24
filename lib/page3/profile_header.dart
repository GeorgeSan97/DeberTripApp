import 'package:flutter/material.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  int _selectedIndex = 4; // Default to profile tab selected (last item)

  @override
  Widget build(BuildContext context) {
    // Get the screen height to calculate 45% for the header
    final screenHeight = MediaQuery.of(context).size.height;
    final headerHeight = screenHeight * 0.45;
    
    return Container(
      height: headerHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF5D6BF8), Color(0xFF475AE8)],
        ),
      ),
      child: Stack(
        children: <Widget>[
          // Profile Content
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header and Settings
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.settings_outlined, color: Colors.white70),
                        onPressed: () {
                          // Open settings
                        },
                      ),
                    ],
                  ),
                ),
                
                // Profile Info (Avatar, Name, Email)
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 16, 0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage('assets/images/pathum.jpg'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Pathum Tzoo",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "pathumtzoo1@gmail.com",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                
                // Action Icons
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildActionButton(0, Icons.phone_android_outlined),
                      _buildActionButton(1, Icons.shopping_bag_outlined),
                      _buildActionButton(2, Icons.add, isLarge: true),
                      _buildActionButton(3, Icons.email_outlined),
                      _buildActionButton(4, Icons.person_outline),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper method for action buttons
  Widget _buildActionButton(int index, IconData icon, {bool isLarge = false}) {
    final bool isSelected = _selectedIndex == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: isSelected ? (isLarge ? 56 : 48) : (isLarge ? 48 : 40),
        height: isSelected ? (isLarge ? 56 : 48) : (isLarge ? 48 : 40),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.white.withOpacity(0.3),
          shape: BoxShape.circle,
          boxShadow: isSelected ? [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ] : null,
        ),
        child: Icon(
          icon,
          color: isSelected ? Theme.of(context).primaryColor : Colors.white,
          size: isLarge ? 30 : 24,
        ),
      ),
    );
  }
}