import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Profile()));

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'My profile',
          style: TextStyle(fontSize: 30, color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/quynhan.png'),
                  radius: 40,
                ),
              ),
              Divider(height: 90, color: Colors.grey[800]),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Quy Nhan',
                style: TextStyle(
                  color: Colors.amber[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Teach subjects: ',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Math',
                style: TextStyle(
                  color: Colors.amber[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Icon(Icons.email, color: Colors.grey[400]),
                  SizedBox(width: 10),
                  Text(
                    'tn20032007@gmail.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 1,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
