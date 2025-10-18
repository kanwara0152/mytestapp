import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String phoneNumber;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.position,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 233, 191, 255),
      
      margin: const EdgeInsets.all(16),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            CircleAvatar(radius: 35, backgroundImage: NetworkImage(imageUrl)),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),

            
            Text(position, style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.email, color: Color.fromARGB(255, 159, 33, 243), size: 16),
                const SizedBox(width: 4),
                Text(email, style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
              ],
            ),


            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.phone, color: Color.fromARGB(255, 255, 109, 233), size: 16),
                const SizedBox(width: 4),
                Text(phoneNumber, style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
