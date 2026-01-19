import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Profile()));

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontSize: 26, color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.amberAccent,
        child: Icon(Icons.add),
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
                'QUY NHAN',
                style: TextStyle(
                  color: Colors.amber[200],
                  letterSpacing: 2,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'AGE',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '$age',
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
