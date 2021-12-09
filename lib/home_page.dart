import 'package:flutter/material.dart';
import 'package:user_interface/main.dart';
// import 'package:user_interface/main.dart';

// import 'main.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  get leading => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Row(
          children: [
            const Padding(
              padding: EdgeInsets.all(4.0),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/4132305/pexels-photo-4132305.jpeg?cs=srgb&dl=pexels-ketut-subiyanto-4132305.jpg&fm=jpg"),
              ),
            ),
            IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const UserInterface(
                      title: 'Login Page',
                    );
                  }));
                }),
          ],
        ),
        title: const Text(
          "Willkommen",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.amber,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                ),
                title: const Text(
                  "Charles Balls",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Row(
                  children: const [
                    Icon(
                      Icons.done_all,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 5.0),
                    Text("Hello"),
                  ],
                ),
                trailing: const Text("11:30am"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
