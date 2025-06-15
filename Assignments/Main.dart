import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContactProfilePage(),
  ));
}

class ContactProfilePage extends StatelessWidget {
  const ContactProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header with back arrow and title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: const [
                  Icon(Icons.arrow_back, size: 24),
                  SizedBox(width: 16),
                  Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Profile image

 CircleAvatar(
  radius: 50,
  backgroundImage: NetworkImage(
    'https://drive.google.com/uc?export=view&id=1S7JiI2rEr2RKWWc6yLUw4lpTWTnFA5O9',
  ),
),
            

            const SizedBox(height: 10),

            // Name
            const Text(
              'Prakhar kumar',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Designation
            const Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 20),

            // Contact Info
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  ContactTile(
                    icon: Icons.phone,
                    text: '+91 8115301987',
                  ),
                  const SizedBox(height: 10),
                  ContactTile(
                    icon: Icons.email,
                    text: 'prakharkumarcse@gmail.com',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactTile({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.black54),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
