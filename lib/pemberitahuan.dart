import 'package:flutter/material.dart';
import 'detail_page.dart';

class PemberitahuanPage extends StatelessWidget {
  const PemberitahuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> users = [
      'San',
      'Chacha',
      'Nano',
      'Dojin',
      'Jun',
    ];

    final List<Color> pastelColors = [
      Colors.pink[100]!,
      Colors.green[100]!,
      Colors.blue[100]!,
      Colors.yellow[100]!,
    ];

    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: users.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: users[index],
                    subtitle: 'Detail notifikasi pengguna',
                    imageUrl: 'https://via.placeholder.com/150',
                  ),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: pastelColors[index % pastelColors.length],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    users[index],
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
