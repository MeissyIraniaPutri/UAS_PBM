import 'package:flutter/material.dart';
import 'detail_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> users = [
      'San',
      'Chacha',
      'Nano',
      'Dojin',
    ];

    return Scaffold(
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person),
            ),
            title: Text(users[index]),
            subtitle: const Text('Last message preview'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: users[index],
                    subtitle: 'Saya hanyalah seorang NPC, jangan dihiraukan',
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjOu2cjEaQcrGAzOM5CIUUGNR8uKwKmfeayw&s',
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
