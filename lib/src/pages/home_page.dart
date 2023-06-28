import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/navbar/navbar.dart';
import 'auth_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => {
                      _signOut(),
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AuthPage(),
                        ),
                      ),
                    },
                    child: const Text('Sign Out'),
                  ),
                  Text(
                    FirebaseAuth.instance.currentUser!.displayName!,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        FirebaseAuth.instance.currentUser!.photoURL!),
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 24),
            child: const Navbar(),
          )
        ],
      ),
    );
  }
}
