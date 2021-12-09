import 'package:flutter/material.dart';
import 'package:user_interface/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Login ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserInterface(title: 'Login Page'),
    );
  }
}

class UserInterface extends StatelessWidget {
  const UserInterface({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          "Login page",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 70,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/936119/pexels-photo-936119.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260"),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("UserName")),
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration: const InputDecoration(label: Text("Password")),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Homepage();
                  }));
                },
                child: const Text(
                  "Create Account",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
              ),
            )
          ],
        ),
      ),
    );
  }
}
