import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50, 
              backgroundImage: AssetImage('assets/meissy_v2.jpg'), 
            ),
            const SizedBox(height: 16), 
            const Text(
              'Meissy Irania Putri',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8), 
            const Text(
              '2210631170030@student.unsika.ac.id',
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 81, 170, 217)),
            ),
          ],
        ),
      ),
    );
  }
}
