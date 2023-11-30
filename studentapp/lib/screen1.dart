import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student App",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: const [IconButton(onPressed: null, icon: Icon(Icons.menu))],
        backgroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () => ToggleButtons(
              isSelected: const [],
              children: const [
                Text("Students Details: John doe, Age: 20, Grade: A"),
              ],
            ),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.amber)),
            child: const Text("Show Details"),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 140),
            child: Text(
              "Student Details",
              style: TextStyle(fontSize: 18, color: Colors.deepPurple),
            ),
          ),

          // ToggleButtons(isSelected: const [], children: const [
          //   Text(
          //     "Student Details",
          //     style: TextStyle(fontSize: 18, color: Colors.deepOrangeAccent),
          //   ),
          // ])
        ],
      )),
    );
  }
}
